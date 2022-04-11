CREATE 
    FUNCTION NormalizeUrl(url varchar(255)) returns varchar(255)
BEGIN
    RETURN concat('',regexp_replace(url,'(https?://|www\\.|.{2}-.{2}\\.)|about\\.|news\\.|press\\.|legal\\.|corporate\\.|\\bcareers\\.|\\bjobs?\\.|([/?].*)', ''));
END;

