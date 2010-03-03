#!r6rs
;; Copyright 2009 Derick Eddington.  My MIT-style license is in the file named
;; LICENSE from the original collection this file is distributed with.

(library (srfi :19 time)
  (export
    time make-time time? time-type time-nanosecond time-second
    date make-date date? date-nanosecond date-second date-minute 
    date-hour date-day date-month date-year date-zone-offset
    time-tai time-utc time-monotonic
    #|time-thread time-process|# time-duration
    read-leap-second-table copy-time current-time
    time-resolution time=? time>? time<? time>=? time<=?
    time-difference time-difference! add-duration
    add-duration! subtract-duration subtract-duration!
    time-tai->time-utc time-tai->time-utc! time-utc->time-tai
    time-utc->time-tai! time-monotonic->time-utc
    time-monotonic->time-utc! time-monotonic->time-tai
    time-monotonic->time-tai! time-utc->time-monotonic
    time-utc->time-monotonic! time-tai->time-monotonic
    time-tai->time-monotonic! time-tai->date time-utc->date
    time-monotonic->date date->time-utc date->time-tai
    date->time-monotonic leap-year? date-year-day
    date-week-day date-week-number current-date
    date->julian-day date->modified-julian-day
    time-utc->julian-day time-utc->modified-julian-day
    time-tai->julian-day time-tai->modified-julian-day
    time-monotonic->julian-day
    time-monotonic->modified-julian-day julian-day->time-utc
    julian-day->time-tai julian-day->time-monotonic
    julian-day->date modified-julian-day->date
    modified-julian-day->time-utc
    modified-julian-day->time-tai
    modified-julian-day->time-monotonic current-julian-day
    current-modified-julian-day date->string string->date)
  (import
    (rnrs)
    (rnrs r5rs)
    (rnrs mutable-strings)
    (srfi :19 time compat)
    (srfi :6 basic-string-ports)
    (srfi private include))
  
  (define read-line
    (case-lambda
      (()
       (get-line (current-input-port)))
      ((port)
       (get-line port))))
  
  (define eof (eof-object))
  
  (include/resolve ("srfi" "%3a19") "srfi-19.scm")
)

