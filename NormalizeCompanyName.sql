CREATE 
    FUNCTION NormalizeCompanyName(name varchar(255)) returns varchar(255)
BEGIN
    RETURN regexp_replace(name,'^(The )|(,? Incorporated)$|(,? Pvt\.)|(,? N\.?V\.?)|(,? Inc\.? ?)|(,? Ltd\.? ?)|(,? L\.?L\?.P\.? ?)|(,? L\.?L\?.C\.? ?)|(,? [a-zA-z]{2})$|(,? ?USA,?)|(,? ?Canada,?)|(,? PA ?)|(,? CORP\.? ?)|(-? ?NYSE: \\w{1,7})|(\\(.*\\))|(,? Company)$|(,? Limited)|( Group)|(,? an? [a-zA-z]* company)|( ?North America)$','');
END;

