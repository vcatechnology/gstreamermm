dnl 
dnl Glib C names have prefix 'G' but C++ namespace Glib
dnl 
define(`_CONV_GST_ENUM',`dnl
_CONVERSION(`GST$1', `$1', (($1)(__ARG3__)))
_CONVERSION(`GST$1', `$1', ((Glib::$1)(__ARG3__)))
_CONVERSION(`$1', `GST$1', ((GST$1)(__ARG3__)))
_CONVERSION(`$1', `GST$1', ((GST$1)(__ARG3__)))
')dnl

_CONVERSION(`GstObject',`Glib::RefPtr<Gst::Object>',`Glib::wrap($3, true)')
#_CONVERSION(`Glib::RefPtr<Object>&',`GstObject*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`State&',`GstState*',`((GstState*) (&($3)))')
_CONVERSION(`GstClockTime',`ClockTime',`$3')
_CONVERSION(`ClockTime',`GstClockTime',`(GstClockTime ($3))')
_CONVERSION(`guint64',`ClockTime',`(ClockTime ($3))')
_CONVERSION(`GstClockID',`Glib::RefPtr<ClockID>',`$3')
_CONVERSION(`Glib::RefPtr<ClockID>',`GstClockID',`(GstClockID ($3))')
_CONVERSION(`GstClock*',`Clock',`Glib::wrap($3)')
_CONVERSION(`const Clock&',`GstClock*',`((GstClock*) (&($3)))')
_CONVERSION(`const Format&',`GstFormat*',`((GstFormat*) (&($3)))')
_CONVERSION(`const gint64&',`gint64*',`((gint64*) (&($3)))')
_CONVERSION(`const std::string&',`const guchar*',`(const guchar*) ($3.c_str())')
_CONVERSION(`Glib::RefPtr<Element>',`GstElement*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`GstPad*',`Glib::RefPtr<Pad>',`Glib::wrap($3)')
_CONVERSION(`GstPad*',`Glib::RefPtr<const Pad>',`Glib::wrap($3)')
_CONVERSION(`GstCaps*',`Glib::RefPtr<Caps>',`Glib::wrap($3)')
_CONVERSION(`GstElement*',`Glib::RefPtr<Element>',`Glib::wrap($3)')
_CONVERSION(`GstElement*',`Glib::RefPtr<const Element>',`Glib::wrap($3)')
_CONVERSION(`GstClock*',`Glib::RefPtr<Clock>',`Glib::wrap($3)')
_CONVERSION(`GstClock*',`Glib::RefPtr<const Clock>',`Glib::wrap($3)')
#_CONVERSION(`Glib::RefPtr<Pad>',`GstPad*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Pad>&',`GstPad*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Element>&',`GstElement*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Clock>&',`GstClock*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`GstMessage*',`Glib::RefPtr<Message>',`Gst::Message::wrap($3)')
_CONVERSION(`GstMessage*',`Glib::RefPtr<const Message>',`Gst::Message::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Message>&',`GstMessage*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Event>&',`GstEvent*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Caps>&',`GstCaps*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Bus>&',`GstBus*',__CONVERT_REFPTR_TO_P)

_CONVERSION(`Structure&',`GstStructure*',`((GstStructure*)(&($3)))')
_CONVERSION(`GstStructure*',`Structure*',`((Structure*) ($3))')
_CONVERSION(`const Glib::RefPtr<Caps>&',`const GstCaps*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const xmlNodePtr&',`xmlNodePtr',`$3')
_CONVERSION(`const va_list&',`va_list',`const_cast<va_list&>($3)')
_CONVERSION(`GstBus*',`Glib::RefPtr<Bus>',`Glib::wrap($3)')

_CONVERSION(`Format&',`GstFormat*',`(($2) &($3))')
_CONVERSION(`SeekFlags',`GstSeekFlags',`(GstSeekFlags($3))')
_CONVERSION(`const gint64&',`gint64',`$3')
_CONVERSION(`gint64&',`gint64*',`&($3)')
_CONVERSION(`const double&',`gdouble',`$3')

_CONVERSION(`GstMessageType',`MessageType',`MessageType($3)')
_CONVERSION(`MessageType',`GstMessageType',`GstMessageType($3)')
_CONVERSION(`GstEventType',`EventType',`EventType($3)')
_CONVERSION(`EventType',`GstEventType',`GstEventType($3)')

_CONVERSION(`GQuark',`Glib::QueryQuark',`Glib::QueryQuark($3)')

_CONV_ENUM(Gst,State)
_CONV_ENUM(Gst,StateChangeReturn)
_CONV_ENUM(Gst,PadLinkReturn)
_CONV_ENUM(Gst,PadDirection)
_CONV_ENUM(Gst,PadPresence)
_CONV_ENUM(Gst,ClockEntryType)
_CONV_ENUM(Gst,ClockReturn)
_CONV_ENUM(Gst,Format)
_CONV_ENUM(Gst,SeekType)
