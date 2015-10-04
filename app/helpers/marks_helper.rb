module MarksHelper

	def format_mark_number(mark_row)
		"<strong> Nota #{mark_row['mark_number']}: </strong>"+"#{ mark_row['is_free'] == 0 ? format_mark(mark_row['mark']) : 'L'}&nbsp;"
	end

	def format_mark(mark)
		mark ? ("%.2f" % mark) : '-'
	end

	def format_examinations(examination, examination_instance)
		if examination_instance == "reg" && examination.first["examination_number"] == 1
			"#{ examination.first['is_absent'] == 0 ? format_mark(examination.first['mark']) : 'A'}"+" (#{ I18n.l examination.first['date'].to_date unless examination.first['date'].blank? })"
		else
			if examination.last["examination_number"] == 2
				"#{ examination.last['is_absent'] == 0 ? format_mark(examination.last['mark']) : 'A'}"
			else
				"-"
			end
		end
	end

	def format_repproveds(repproves)
		"#{ repproves.first['is_absent'] == 0 ? format_mark(repproves.first['mark']) : 'A'}"+" (#{ I18n.l repproves.first['date'].to_date unless repproves.first['date'] == nil })"
	end

end
