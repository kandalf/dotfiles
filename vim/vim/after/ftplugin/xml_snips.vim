let snippet_filetype = 'xml'
"if !exists('g:loaded_snips') || exists('s:did_'.snippet_filetype.'_snips')
	"fini
"en
let s:did_{snippet_filetype}_snips = 1

exe "Snipp vxml <?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<vxml version=\"2.1\">\n\t${1:Place your VXML elements here}\n</vxml>"
exe "Snipp form <form id=\"${1:`Filename($1_submit)`}\">\n\t${2:Place your fields here}\n</form>"
exe "Snipp field <field name=\"${1:field_name_here}\">\n\t${2:Place the field content here}\n</field>"
exe "Snipp grammar <grammar type=\"${1:text/gsl}\">\n<![CDATA[\n\t;Match one of the enclosed terms\n\t[\n\t\t${2}\n\t]\n]]>\n</grammar>"
exe "Snipp noinput <noinput>\n\t${1:I did not hear anything. Please try again.}\n\t<reprompt/>\n</noinput>"
exe "Snipp nomatch <nomatch>\n\t${1:I did not find a match. Please try again.}\n\t<reprompt/>\n</nomatch>"
exe "Snipp filled <filled namelist=\"${1:YourFieldName}\">\n\t<if cond=\"$1 == ${2:value}\">\n\t\t<prompt>${3:Say something}</prompt>\n\t<else/>\n\t\t<prompt>${4:No match condition}</prompt>\n\t</if>\n</filled>"
exe "Snipp if <if cond=\"${1:condition} ${2:==} ${3:value}\">\n\t<prompt>${4:Say something}</prompt>\n${5}<else/>\n\t<prompt>${6:No match condition}</prompt>\n\t</if>"
exe "Snipp elseif <elseif cond=\"${1:condition} ${2:==} ${3:value}\" />\n\t<prompt>${4:action}</prompt>"
