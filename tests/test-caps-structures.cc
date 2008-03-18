// -*- Mode: C++; indent-tabs-mode: nil; c-basic-offset: 2 -*-

/* gstreamermm - a C++ wrapper for gstreamer
 *
 * Copyright 2008 The gstreamermm Development Team
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the Free
 * Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

#include <gstreamermm.h>
#include <iostream>

void add_structures(const Glib::RefPtr<Gst::Caps>& caps)
{
  Gst::Structure struct1("Structure 1");
  Gst::Structure struct2("Structure 2");
  Gst::Structure struct3("Structure 3");

  Glib::Value<Glib::ustring> message;
  message.init(Glib::Value<Glib::ustring>::value_type());

  message.set("Message 1");
  struct1.set_field("message", message);

  message.set("Message 2");
  struct2.set_field("message", message);

  message.set("Message 3");
  struct3.set_field("message", message);

  caps->append_structure(struct1);
  caps->append_structure(struct2);
  caps->append_structure(struct3);
}

int main (int argc, char* argv[])
{
  Gst::init(argc, argv);

  Glib::RefPtr<Gst::Caps> caps = Gst::Caps::create();
  add_structures(caps);

  for (int i = 0; i < 2; i++) {
    Glib::Value<Glib::ustring> v;
    const Gst::Structure* s = caps->get_structure(i);
    s->get_field("message", v);
    std::cout << s->get_name() << ": " << v.get() << std::endl;
  }

  caps->remove_structure(1);

  std::cout << "Caps structure index 1 = " << caps->get_structure(1)->get_name() << std::endl;

  return 0;
}
