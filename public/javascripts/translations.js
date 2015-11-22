I18n.translations || (I18n.translations = {});
I18n.translations["en"] = {"active_admin":{"access_denied":{"message":"You are not authorized to perform this action."},"any":"Any","batch_actions":{"action_label":"%{title} Selected","button_label":"Batch Actions","default_confirmation":"Are you sure you want to do this?","delete_confirmation":"Are you sure you want to delete these %{plural_model}?","labels":{"destroy":"Delete"},"link":"Create one","selection_toggle_explanation":"(Toggle Selection)","succesfully_destroyed":{"one":"Successfully destroyed 1 %{model}","other":"Successfully destroyed %{count} %{plural_model}"}},"blank_slate":{"content":"There are no %{resource_name} yet.","link":"Create one"},"cancel":"Cancel","comments":{"add":"Add Comment","author":"Author","author_missing":"Anonymous","author_type":"Author Type","body":"Body","created_at":"Created","delete":"Delete Comment","delete_confirmation":"Are you sure you want to delete these comment?","errors":{"empty_text":"Comment wasn't saved, text was empty."},"no_comments_yet":"No comments yet.","resource":"Resource","resource_type":"Resource Type","title":"Comment","title_content":"Comments (%{count})"},"dashboard":"Dashboard","dashboard_welcome":{"call_to_action":"To add dashboard sections, checkout 'app/admin/dashboard.rb'","welcome":"Welcome to Active Admin. This is the default dashboard page."},"delete":"Delete","delete_confirmation":"Are you sure you want to delete this?","delete_model":"Delete %{model}","details":"%{model} Details","devise":{"change_password":{"submit":"Change my password","title":"Change your password"},"email":{"title":"Email"},"links":{"forgot_your_password":"Forgot your password?","resend_confirmation_instructions":"Resend confirmation instructions","resend_unlock_instructions":"Resend unlock instructions","sign_in":"Sign in","sign_in_with_omniauth_provider":"Sign in with %{provider}","sign_up":"Sign up"},"login":{"remember_me":"Remember me","submit":"Login","title":"Login"},"password":{"title":"Password"},"resend_confirmation_instructions":{"submit":"Resend confirmation instructions","title":"Resend confirmation instructions"},"reset_password":{"submit":"Reset My Password","title":"Forgot your password?"},"sign_up":{"submit":"Sign up","title":"Sign up"},"subdomain":{"title":"Subdomain"},"unlock":{"submit":"Resend unlock instructions","title":"Resend unlock instructions"},"username":{"title":"Username"}},"download":"Download:","dropdown_actions":{"button_label":"Actions"},"edit":"Edit","edit_model":"Edit %{model}","empty":"Empty","filters":{"buttons":{"clear":"Clear Filters","filter":"Filter"},"predicates":{"contains":"Contains","ends_with":"Ends with","equals":"Equals","greater_than":"Greater than","less_than":"Less than","starts_with":"Starts with"}},"has_many_delete":"Delete","has_many_new":"Add New %{model}","has_many_remove":"Remove","index_list":{"block":"List","blog":"Blog","grid":"Grid","table":"Table"},"logout":"Logout","main_content":"Please implement %{model}#main_content to display content.","new_model":"New %{model}","next":"Next","pagination":{"empty":"No %{model} found","entry":{"one":"entry","other":"entries"},"multiple":"Displaying %{model} \u003cb\u003e%{from}\u0026nbsp;-\u0026nbsp;%{to}\u003c/b\u003e of \u003cb\u003e%{total}\u003c/b\u003e in total","multiple_without_total":"Displaying %{model} \u003cb\u003e%{from}\u0026nbsp;-\u0026nbsp;%{to}\u003c/b\u003e","one":"Displaying \u003cb\u003e1\u003c/b\u003e %{model}","one_page":"Displaying \u003cb\u003eall %{n}\u003c/b\u003e %{model}"},"powered_by":"Powered by %{active_admin} %{version}","previous":"Previous","search_status":{"current_filters":"Current filters:","headline":"Scope:","no_current_filters":"None"},"sidebars":{"filters":"Filters","search_status":"Search Status"},"status_tag":{"no":"No","yes":"Yes"},"unsupported_browser":{"headline":"Please note that ActiveAdmin no longer supports Internet Explorer versions 8 or less.","recommendation":"We recommend upgrading to the latest \u003ca href=\"http://windows.microsoft.com/ie\"\u003eInternet Explorer\u003c/a\u003e, \u003ca href=\"https://chrome.google.com/\"\u003eGoogle Chrome\u003c/a\u003e, or \u003ca href=\"https://mozilla.org/firefox/\"\u003eFirefox\u003c/a\u003e.","turn_off_compatibility_view":"If you are using IE 9 or later, make sure you \u003ca href=\"http://windows.microsoft.com/en-US/windows7/webpages-look-incorrect-in-Internet-Explorer\"\u003eturn off \"Compatibility View\"\u003c/a\u003e."},"view":"View"},"activerecord":{"errors":{"messages":{"record_invalid":"Validation failed: %{errors}","restrict_dependent_destroy":{"many":"Cannot delete record because dependent %{record} exist","one":"Cannot delete record because a dependent %{record} exists"}}}},"date":{"abbr_day_names":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"abbr_month_names":[null,"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"day_names":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"formats":{"default":"%Y-%m-%d","long":"%B %d, %Y","short":"%b %d"},"month_names":[null,"January","February","March","April","May","June","July","August","September","October","November","December"],"order":["year","month","day"]},"datetime":{"distance_in_words":{"about_x_hours":{"one":"about 1 hour","other":"about %{count} hours"},"about_x_months":{"one":"about 1 month","other":"about %{count} months"},"about_x_years":{"one":"about 1 year","other":"about %{count} years"},"almost_x_years":{"one":"almost 1 year","other":"almost %{count} years"},"half_a_minute":"half a minute","less_than_x_minutes":{"one":"less than a minute","other":"less than %{count} minutes"},"less_than_x_seconds":{"one":"less than 1 second","other":"less than %{count} seconds"},"over_x_years":{"one":"over 1 year","other":"over %{count} years"},"x_days":{"one":"1 day","other":"%{count} days"},"x_minutes":{"one":"1 minute","other":"%{count} minutes"},"x_months":{"one":"1 month","other":"%{count} months"},"x_seconds":{"one":"1 second","other":"%{count} seconds"}},"prompts":{"day":"Day","hour":"Hour","minute":"Minute","month":"Month","second":"Seconds","year":"Year"}},"devise":{"confirmations":{"confirmed":"Your email address has been successfully confirmed.","send_instructions":"You will receive an email with instructions for how to confirm your email address in a few minutes.","send_paranoid_instructions":"If your email address exists in our database, you will receive an email with instructions for how to confirm your email address in a few minutes."},"failure":{"already_authenticated":"You are already signed in.","inactive":"Your account is not activated yet.","invalid":"Invalid %{authentication_keys} or password.","last_attempt":"You have one more attempt before your account is locked.","locked":"Your account is locked.","not_found_in_database":"Invalid %{authentication_keys} or password.","timeout":"Your session expired. Please sign in again to continue.","unauthenticated":"You need to sign in or sign up before continuing.","unconfirmed":"You have to confirm your email address before continuing."},"mailer":{"confirmation_instructions":{"subject":"Confirmation instructions"},"reset_password_instructions":{"subject":"Reset password instructions"},"unlock_instructions":{"subject":"Unlock instructions"}},"omniauth_callbacks":{"failure":"Could not authenticate you from %{kind} because \"%{reason}\".","success":"Successfully authenticated from %{kind} account."},"passwords":{"no_token":"You can't access this page without coming from a password reset email. If you do come from a password reset email, please make sure you used the full URL provided.","send_instructions":"You will receive an email with instructions on how to reset your password in a few minutes.","send_paranoid_instructions":"If your email address exists in our database, you will receive a password recovery link at your email address in a few minutes.","updated":"Your password has been changed successfully. You are now signed in.","updated_not_active":"Your password has been changed successfully."},"registrations":{"destroyed":"Bye! Your account has been successfully cancelled. We hope to see you again soon.","signed_up":"Welcome! You have signed up successfully.","signed_up_but_inactive":"You have signed up successfully. However, we could not sign you in because your account is not yet activated.","signed_up_but_locked":"You have signed up successfully. However, we could not sign you in because your account is locked.","signed_up_but_unconfirmed":"A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.","update_needs_confirmation":"You updated your account successfully, but we need to verify your new email address. Please check your email and follow the confirm link to confirm your new email address.","updated":"Your account has been updated successfully."},"sessions":{"already_signed_out":"Signed out successfully.","signed_in":"Signed in successfully.","signed_out":"Signed out successfully."},"unlocks":{"send_instructions":"You will receive an email with instructions for how to unlock your account in a few minutes.","send_paranoid_instructions":"If your account exists, you will receive an email with instructions for how to unlock it in a few minutes.","unlocked":"Your account has been unlocked successfully. Please sign in to continue."}},"errors":{"format":"%{attribute} %{message}","messages":{"accepted":"must be accepted","already_confirmed":"was already confirmed, please try signing in","blank":"can't be blank","carrierwave_download_error":"could not be downloaded","carrierwave_integrity_error":"is not of an allowed file type","carrierwave_processing_error":"failed to be processed","confirmation":"doesn't match %{attribute}","confirmation_period_expired":"needs to be confirmed within %{period}, please request a new one","empty":"can't be empty","equal_to":"must be equal to %{count}","even":"must be even","exclusion":"is reserved","expired":"has expired, please request a new one","extension_black_list_error":"You are not allowed to upload %{extension} files, prohibited types: %{prohibited_types}","extension_white_list_error":"You are not allowed to upload %{extension} files, allowed types: %{allowed_types}","greater_than":"must be greater than %{count}","greater_than_or_equal_to":"must be greater than or equal to %{count}","inclusion":"is not included in the list","invalid":"is invalid","less_than":"must be less than %{count}","less_than_or_equal_to":"must be less than or equal to %{count}","mime_types_processing_error":"Failed to process file with MIME::Types, maybe not valid content-type? Original Error: %{e}","mini_magick_processing_error":"Failed to manipulate with MiniMagick, maybe it is not an image? Original Error: %{e}","not_a_number":"is not a number","not_an_integer":"must be an integer","not_found":"not found","not_locked":"was not locked","not_saved":{"one":"1 error prohibited this %{resource} from being saved:","other":"%{count} errors prohibited this %{resource} from being saved:"},"odd":"must be odd","other_than":"must be other than %{count}","present":"must be blank","record_invalid":"Validation failed: %{errors}","restrict_dependent_destroy":{"many":"Cannot delete record because dependent %{record} exist","one":"Cannot delete record because a dependent %{record} exists"},"rmagick_processing_error":"Failed to manipulate with rmagick, maybe it is not an image? Original Error: %{e}","taken":"has already been taken","too_long":{"one":"is too long (maximum is 1 character)","other":"is too long (maximum is %{count} characters)"},"too_short":{"one":"is too short (minimum is 1 character)","other":"is too short (minimum is %{count} characters)"},"wrong_length":{"one":"is the wrong length (should be 1 character)","other":"is the wrong length (should be %{count} characters)"}},"template":{"body":"There were problems with the following fields:","header":{"one":"1 error prohibited this %{model} from being saved","other":"%{count} errors prohibited this %{model} from being saved"}}},"flash":{"actions":{"create":{"notice":"%{resource_name} was successfully created."},"destroy":{"alert":"%{resource_name} could not be destroyed.","notice":"%{resource_name} was successfully destroyed."},"update":{"notice":"%{resource_name} was successfully updated."}}},"hello":"Hello world","helpers":{"page_entries_info":{"more_pages":{"display_entries":"Displaying %{entry_name} \u003cb\u003e%{first}\u0026nbsp;-\u0026nbsp;%{last}\u003c/b\u003e of \u003cb\u003e%{total}\u003c/b\u003e in total"},"one_page":{"display_entries":{"one":"Displaying \u003cb\u003e1\u003c/b\u003e %{entry_name}","other":"Displaying \u003cb\u003eall %{count}\u003c/b\u003e %{entry_name}","zero":"No %{entry_name} found"}}},"select":{"prompt":"Please select"},"submit":{"create":"Create %{model}","submit":"Save %{model}","update":"Update %{model}"}},"home":"Home","i18n":{"plural":{"keys":["one","other"],"rule":{}}},"number":{"currency":{"format":{"delimiter":",","format":"%u%n","precision":2,"separator":".","significant":false,"strip_insignificant_zeros":false,"unit":"$"}},"format":{"delimiter":",","precision":3,"separator":".","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":"Billion","million":"Million","quadrillion":"Quadrillion","thousand":"Thousand","trillion":"Trillion","unit":""}},"format":{"delimiter":"","precision":3,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n %u","units":{"byte":{"one":"Byte","other":"Bytes"},"gb":"GB","kb":"KB","mb":"MB","tb":"TB"}}},"percentage":{"format":{"delimiter":"","format":"%n%"}},"precision":{"format":{"delimiter":""}}},"ransack":{"all":"all","and":"and","any":"any","asc":"ascending","attribute":"attribute","combinator":"combinator","condition":"condition","desc":"descending","or":"or","predicate":"predicate","predicates":{"blank":"is blank","cont":"contains","cont_all":"contains all","cont_any":"contains any","does_not_match":"doesn't match","does_not_match_all":"doesn't match all","does_not_match_any":"doesn't match any","end":"ends with","end_all":"ends with all","end_any":"ends with any","eq":"equals","eq_all":"equals all","eq_any":"equals any","false":"is false","gt":"greater than","gt_all":"greater than all","gt_any":"greater than any","gteq":"greater than or equal to","gteq_all":"greater than or equal to all","gteq_any":"greater than or equal to any","in":"in","in_all":"in all","in_any":"in any","lt":"less than","lt_all":"less than all","lt_any":"less than any","lteq":"less than or equal to","lteq_all":"less than or equal to all","lteq_any":"less than or equal to any","matches":"matches","matches_all":"matches all","matches_any":"matches any","not_cont":"doesn't contain","not_cont_all":"doesn't contain all","not_cont_any":"doesn't contain any","not_end":"doesn't end with","not_end_all":"doesn't end with all","not_end_any":"doesn't end with any","not_eq":"not equal to","not_eq_all":"not equal to all","not_eq_any":"not equal to any","not_in":"not in","not_in_all":"not in all","not_in_any":"not in any","not_null":"is not null","not_start":"doesn't start with","not_start_all":"doesn't start with all","not_start_any":"doesn't start with any","null":"is null","present":"is present","start":"starts with","start_all":"starts with all","start_any":"starts with any","true":"is true"},"search":"search","sort":"sort","value":"value"},"support":{"array":{"last_word_connector":", and ","two_words_connector":" and ","words_connector":", "}},"time":{"am":"am","formats":{"default":"%a, %d %b %Y %H:%M:%S %z","long":"%B %d, %Y %H:%M","short":"%d %b %H:%M"},"pm":"pm"},"views":{"pagination":{"first":"\u0026laquo; First","last":"Last \u0026raquo;","next":"Next \u0026rsaquo;","previous":"\u0026lsaquo; Prev","truncate":"\u0026hellip;"}}};
I18n.translations["ru"] = {"active_admin":{"access_denied":{"message":"Вы не авторизованы для выполнения данного действия."},"any":"Любой","batch_actions":{"action_label":"%{title} выбранное","button_label":"Групповые операции","default_confirmation":"Вы уверены, что вы хотите это сделать?","delete_confirmation":"Вы уверены, что хотите удалить %{plural_model}?","labels":{"destroy":"Удалить"},"link":"Создать","selection_toggle_explanation":"(Отметить всё / Снять выделение)","succesfully_destroyed":{"few":"Успешно удалено: %{count} %{plural_model}","many":"Успешно удалено: %{count} %{plural_model}","one":"Успешно удалено: 1 %{model}","other":"Успешно удалено: %{count} %{plural_model}"}},"blank_slate":{"content":"Пока нет %{resource_name}.","link":"Создать"},"cancel":"Отмена","comments":{"add":"Добавить Комментарий","author":"Автор","author_missing":"Аноним","author_type":"Тип автора","body":"Текст","delete":"Удалить Комментарий","delete_confirmation":"Вы уверены, что хотите удалить этот комментарий?","errors":{"empty_text":"Комментарий не сохранен, текст не должен быть пустым."},"no_comments_yet":"Пока нет комментариев.","resource":"Ресурс","resource_type":"Тип ресурса","title":"Комментарий","title_content":"Комментарии (%{count})"},"dashboard":"Панель управления","dashboard_welcome":{"call_to_action":"Чтобы добавить сюда что-нибудь загляните в 'app/admin/dashboard.rb'","welcome":"Добро пожаловать в Active Admin. Это стандартная страница управления сайтом."},"delete":"Удалить","delete_confirmation":"Вы уверены, что хотите удалить это?","delete_model":"Удалить %{model}","details":"%{model} подробнее","devise":{"change_password":{"submit":"Изменение пароля","title":"Изменение пароля"},"email":{"title":"Эл. почта"},"links":{"forgot_your_password":"Забыли пароль?","resend_confirmation_instructions":"Повторная отправка инструкций подтверждения","resend_unlock_instructions":"Повторная отправка инструкций разблокировки","sign_in":"Войти","sign_in_with_omniauth_provider":"Войти с помощью %{provider}","sign_up":"Зарегистрироваться"},"login":{"remember_me":"Запомнить меня","submit":"Войти","title":"Войти"},"password":{"title":"Пароль"},"resend_confirmation_instructions":{"submit":"Выслать повторно письмо с активацией","title":"Выслать повторно письмо с активацией"},"reset_password":{"submit":"Сбросить пароль","title":"Забыли пароль?"},"sign_up":{"submit":"Зарегистрироваться","title":"Зарегистрироваться"},"subdomain":{"title":"Поддомен"},"unlock":{"submit":"Повторно отправить инструкции по разблокировке","title":"Повторно отправить инструкции по разблокировке"},"username":{"title":"Имя пользователя"}},"download":"Загрузка:","dropdown_actions":{"button_label":"Oперации"},"edit":"Изменить","edit_model":"Изменить %{model}","empty":"Пусто","filters":{"buttons":{"clear":"Очистить","filter":"Фильтровать"},"predicates":{"contains":"Содержит","ends_with":"Заканчивается","equals":"Равно","greater_than":"больше","less_than":"меньше","starts_with":"Начинается с"}},"has_many_delete":"Удалить","has_many_new":"Добавить %{model}","has_many_remove":"Убрать","index_list":{"block":"Список","blog":"Блог","grid":"Сетка","table":"Таблица"},"logout":"Выйти","main_content":"Создайте %{model}#main_content для отображения содержимого.","new_model":"Создать %{model}","next":"След.","pagination":{"empty":"%{model} не найдено","entry":{"few":"записи","many":"записей","one":"запись","other":"записей"},"multiple":"Результат: %{model} \u003cb\u003e%{from}\u0026nbsp;-\u0026nbsp;%{to}\u003c/b\u003e из \u003cb\u003e%{total}\u003c/b\u003e","multiple_without_total":"Результат: %{model} \u003cb\u003e%{from}\u0026nbsp;-\u0026nbsp;%{to}\u003c/b\u003e","one":"Результат: \u003cb\u003e1\u003c/b\u003e %{model}","one_page":"Результат: \u003cb\u003e%{n}\u003c/b\u003e %{model}"},"powered_by":"Powered by %{active_admin} %{version}","previous":"Пред.","search_status":{"current_filters":"Текущий фильтр:","headline":"Область:","no_current_filters":"Ни один"},"sidebars":{"filters":"Фильтры","search_status":"Статус поиска"},"status_tag":{"no":"Нет","yes":"Да"},"unsupported_browser":{"headline":"Пожалуйста, обратите внимание, что ActiveAdmin больше не поддерживает Internet Explorer 8 версии и старее","recommendation":"Мы рекомендуем обновить версию вашего браузера (\u003ca href=\"http://windows.microsoft.com/ie\"\u003eInternet Explorer\u003c/a\u003e, \u003ca href=\"https://chrome.google.com/\"\u003eGoogle Chrome\u003c/a\u003e, или \u003ca href=\"https://mozilla.org/firefox/\"\u003eFirefox\u003c/a\u003e).","turn_off_compatibility_view":"Если вы используете IE 9 или новее, убедитесь, что \u003ca href=\"http://windows.microsoft.com/en-US/windows7/webpages-look-incorrect-in-Internet-Explorer\"\u003eвы выключили опцию \"Просмотр в режиме совместимости\"\u003c/a\u003e."},"view":"Открыть"},"date":{"abbr_day_names":["Вс","Пн","Вт","Ср","Чт","Пт","Сб"],"abbr_month_names":[null,"янв.","февр.","марта","апр.","мая","июня","июля","авг.","сент.","окт.","нояб.","дек."],"day_names":["воскресенье","понедельник","вторник","среда","четверг","пятница","суббота"],"formats":{"default":"%d.%m.%Y","long":"%-d %B %Y","short":"%-d %b"},"month_names":[null,"января","февраля","марта","апреля","мая","июня","июля","августа","сентября","октября","ноября","декабря"],"order":["day","month","year"]},"datetime":{"distance_in_words":{"about_x_hours":{"few":"около %{count} часов","many":"около %{count} часов","one":"около %{count} часа","other":"около %{count} часа"},"about_x_months":{"few":"около %{count} месяцев","many":"около %{count} месяцев","one":"около %{count} месяца","other":"около %{count} месяца"},"about_x_years":{"few":"около %{count} лет","many":"около %{count} лет","one":"около %{count} года","other":"около %{count} лет"},"almost_x_years":{"few":"почти %{count} года","many":"почти %{count} лет","one":"почти 1 год","other":"почти %{count} лет"},"half_a_minute":"меньше минуты","less_than_x_minutes":{"few":"меньше %{count} минут","many":"меньше %{count} минут","one":"меньше %{count} минуты","other":"меньше %{count} минуты"},"less_than_x_seconds":{"few":"меньше %{count} секунд","many":"меньше %{count} секунд","one":"меньше %{count} секунды","other":"меньше %{count} секунды"},"over_x_years":{"few":"больше %{count} лет","many":"больше %{count} лет","one":"больше %{count} года","other":"больше %{count} лет"},"x_days":{"few":"%{count} дня","many":"%{count} дней","one":"%{count} день","other":"%{count} дня"},"x_minutes":{"few":"%{count} минуты","many":"%{count} минут","one":"%{count} минуту","other":"%{count} минуты"},"x_months":{"few":"%{count} месяца","many":"%{count} месяцев","one":"%{count} месяц","other":"%{count} месяца"},"x_seconds":{"few":"%{count} секунды","many":"%{count} секунд","one":"%{count} секундy","other":"%{count} секунды"}},"prompts":{"day":"День","hour":"Часов","minute":"Минут","month":"Месяц","second":"Секунд","year":"Год"}},"errors":{"format":"%{attribute} %{message}","messages":{"accepted":"нужно подтвердить","blank":"не может быть пустым","confirmation":"не совпадает со значением поля %{attribute}","empty":"не может быть пустым","equal_to":"может иметь лишь значение, равное %{count}","even":"может иметь лишь нечетное значение","exclusion":"имеет зарезервированное значение","greater_than":"может иметь значение большее %{count}","greater_than_or_equal_to":"может иметь значение большее или равное %{count}","inclusion":"имеет непредусмотренное значение","invalid":"имеет неверное значение","less_than":"может иметь значение меньшее чем %{count}","less_than_or_equal_to":"может иметь значение меньшее или равное %{count}","not_a_number":"не является числом","not_an_integer":"не является целым числом","odd":"может иметь лишь четное значение","other_than":"должно отличаться от %{count}","present":"нужно оставить пустым","record_invalid":"Возникли ошибки: %{errors}","restrict_dependent_destroy":{"many":"Невозможно удалить запись, так как существуют зависимости: %{record}","one":"Невозможно удалить запись, так как существует зависимость: %{record}"},"taken":"уже существует","too_long":{"few":"слишком большой длины (не может быть больше чем %{count} символа)","many":"слишком большой длины (не может быть больше чем %{count} символов)","one":"слишком большой длины (не может быть больше чем %{count} символ)","other":"слишком большой длины (не может быть больше чем %{count} символа)"},"too_short":{"few":"недостаточной длины (не может быть меньше %{count} символов)","many":"недостаточной длины (не может быть меньше %{count} символов)","one":"недостаточной длины (не может быть меньше %{count} символа)","other":"недостаточной длины (не может быть меньше %{count} символа)"},"wrong_length":{"few":"неверной длины (может быть длиной ровно %{count} символа)","many":"неверной длины (может быть длиной ровно %{count} символов)","one":"неверной длины (может быть длиной ровно %{count} символ)","other":"неверной длины (может быть длиной ровно %{count} символа)"}},"template":{"body":"Проблемы возникли со следующими полями:","header":{"few":"%{model}: сохранение не удалось из-за %{count} ошибок","many":"%{model}: сохранение не удалось из-за %{count} ошибок","one":"%{model}: сохранение не удалось из-за %{count} ошибки","other":"%{model}: сохранение не удалось из-за %{count} ошибки"}}},"helpers":{"select":{"prompt":"Выберите: "},"submit":{"create":"Создать %{model}","submit":"Сохранить %{model}","update":"Сохранить %{model}"}},"home":"домой","i18n":{"plural":{"keys":["one","few","many","other"],"rule":{}},"transliterate":{"rule":{}}},"number":{"currency":{"format":{"delimiter":" ","format":"%n %u","precision":2,"separator":",","significant":false,"strip_insignificant_zeros":false,"unit":"руб."}},"format":{"delimiter":" ","precision":3,"separator":",","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":{"few":"миллиардов","many":"миллиардов","one":"миллиард","other":"миллиардов"},"million":{"few":"миллионов","many":"миллионов","one":"миллион","other":"миллионов"},"quadrillion":{"few":"квадриллионов","many":"квадриллионов","one":"квадриллион","other":"квадриллионов"},"thousand":{"few":"тысяч","many":"тысяч","one":"тысяча","other":"тысяч"},"trillion":{"few":"триллионов","many":"триллионов","one":"триллион","other":"триллионов"},"unit":""}},"format":{"delimiter":"","precision":1,"significant":false,"strip_insignificant_zeros":false},"storage_units":{"format":"%n %u","units":{"byte":{"few":"байта","many":"байт","one":"байт","other":"байта"},"gb":"ГБ","kb":"КБ","mb":"МБ","tb":"ТБ"}}},"percentage":{"format":{"delimiter":"","format":"%n%"}},"precision":{"format":{"delimiter":""}}},"support":{"array":{"last_word_connector":" и ","two_words_connector":" и ","words_connector":", "}},"time":{"am":"утра","formats":{"default":"%a, %d %b %Y, %H:%M:%S %z","long":"%d %B %Y, %H:%M","short":"%d %b, %H:%M"},"pm":"вечера"}};
