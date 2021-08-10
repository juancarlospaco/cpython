## * https://upbge.org/api/bpy.app.translations.html
import nimpy

template X(simbol; a, b): auto = nimpy.pyImport("bpy.app.translations").simbol(a, b).to(type(result))
template X(simbol; a):    auto =
  when declared result: nimpy.pyImport("bpy.app.translations").simbol(a).to(type(result)) else: discard nimpy.pyImport("bpy.app.translations").simbol(a)

proc pgettext*(msgid, msgctxt: string):       string = X pgettext, msgid, msgctxt
proc pgettext*(msgid: string):                string = X pgettext, msgid
proc pgettext_data*(msgid, msgctxt: string):  string = X pgettext_data, msgid, msgctxt
proc pgettext_data*(msgid: string):           string = X pgettext_data, msgid
proc pgettext_iface*(msgid, msgctxt: string): string = X pgettext_iface, msgid, msgctxt
proc pgettext_iface*(msgid: string):          string = X pgettext_iface, msgid
proc pgettext_tip*(msgid, msgctxt: string):   string = X pgettext_tip, msgid, msgctxt
proc pgettext_tip*(msgid: string):            string = X pgettext_tip, msgid
proc unregister*(module_name: string)                = X unregister, module_name
proc locale_explode*(locale: string): tuple[language, country, variant, language_country, language_variant: string] = X locale_explode, locale
