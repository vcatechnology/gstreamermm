// -*- c++ -*-

/* gstreamermm - a C++ wrapper for gstreamer
 *
 * Copyright 2008 The gstreamermm Development Team
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free
 * Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

#ifndef _GSTREAMERMM_GST_WRAP_INIT_H
#define _GSTREAMERMM_GST_WRAP_INIT_H

// gst_wrap_init.cc is generated by tools/generate_gst_wrap_init.pl

namespace Gst
{
  /** Initializes wrapping system of Gst::MiniObject derrived classes.  There
   * is no need to use this function directly; instead use Gst::init() or
   * Gst::init_check().
   */
  void gst_wrap_init();
}

#endif //_GSTREAMERMM_GST_WRAP_INIT_H
