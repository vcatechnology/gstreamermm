/*
 * test-atomicqueue.cc
 *
 *  Created on: Aug 7, 2014
 *      Author: loganek
 */

#include <gtest/gtest.h>
#include <gstreamermm.h>
#include <string>

using namespace Gst;
using Glib::RefPtr;

TEST(AtomicQueueTest, ShouldReturnFirstElementInQueueAndNotRemoveIt)
{
	RefPtr<AtomicQueue<int> > queue = AtomicQueue<int>::create(2);
	queue->push(12);
	queue->push(5);
	queue->push(9);

	ASSERT_EQ(12, queue->peek());
	ASSERT_EQ(3, queue->length());
}

TEST(AtomicQueueTest, ShouldThrowExceptionOnPeekIfQueueIsEmpty)
{
	RefPtr<AtomicQueue<int> > queue = AtomicQueue<int>::create(2);

	EXPECT_THROW(queue->peek(), std::runtime_error);
}

TEST(AtomicQueueTest, ShouldReturnFirstElementAndRemoveIt)
{
	RefPtr<AtomicQueue<int> > queue = AtomicQueue<int>::create(2);
	queue->push(7);
	queue->push(14);
	queue->push(10);

	ASSERT_EQ(7, queue->pop());
	ASSERT_EQ(2, queue->length());
}

TEST(AtomicQueueTest, ShouldImitateGstAtomicQueueStructByGpointerAsTemplate)
{
	RefPtr<AtomicQueue<gpointer> > queue = AtomicQueue<gpointer>::create(2);
	int* data = new int(5);
	GstElement* element = gst_element_factory_make("fakesrc", "dummy-name");
	queue->push(data);
	queue->push(element);

	int* new_data = static_cast<int*>(queue->pop());
	GstElement* new_element = static_cast<GstElement*>(queue->pop());
	ASSERT_EQ(*new_data, *data);
	ASSERT_TRUE(GST_IS_ELEMENT(element));
	ASSERT_EQ(new_element, element);
	EXPECT_STREQ("dummy-name", gst_element_get_name(new_element));
	delete new_data;
	ASSERT_EQ(1, GST_OBJECT_REFCOUNT(element));
	gst_object_unref(element);
}
