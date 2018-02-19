p_small=input('Enter P(small): ');
p_medium=input('Enter P(medium): ');
p_large=input('Enter P(large): ');

p_nail_small=input('Enter P(nail | small): ');
p_nail_medium=input('Enter P(nail | medium): ');
p_nail_large=input('Enter P(nail | large): ');
p_bolt_small=input('Enter P(bolt | small): ');
p_bolt_medium=input('Enter P(bolt | medium): ');
p_bolt_large=input('Enter P(bolt | large): ');
p_revit_small=input('Enter P(revit | small): ');
p_revit_medium=input('Enter P(revit | medium): ');
p_revit_large=input('Enter P(revit | large): ');

p_s_n=((p_nail_small * p_small)/(p_nail_small * p_small + p_nail_medium * p_medium + p_nail_large * p_large));
p_m_n=((p_nail_medium * p_medium)/(p_nail_small * p_small + p_nail_medium * p_medium + p_nail_large * p_large));
p_l_n=((p_nail_large * p_large)/(p_nail_small * p_small + p_nail_medium * p_medium + p_nail_large * p_large));

p_s_b=((p_bolt_small * p_small)/(p_bolt_small * p_small + p_bolt_medium * p_medium + p_bolt_large * p_large));
p_m_b=((p_bolt_medium * p_medium)/(p_bolt_small * p_small + p_bolt_medium * p_medium + p_bolt_large * p_large));
p_l_b=((p_bolt_large * p_large)/(p_bolt_small * p_small + p_bolt_medium * p_medium + p_bolt_large * p_large));

p_s_r=((p_revit_small * p_small)/(p_revit_small * p_small + p_revit_medium * p_medium + p_revit_large * p_large));
p_m_r=((p_revit_medium * p_medium)/(p_revit_small * p_small + p_revit_medium * p_medium + p_revit_large * p_large));
p_l_r=((p_revit_large * p_large)/(p_revit_small * p_small + p_revit_medium * p_medium + p_revit_large * p_large));

disp('P (small | nail)');
disp(p_s_n);

disp('P (medium | nail)');
disp(p_m_n);

disp('P (large | nail)');
disp(p_l_n);

if max([p_s_n,p_m_n,p_l_n])==p_s_n
    disp('nail as belonging to the class small');
    disp('The probability of error P (error | nail) =');
    disp(1-p_s_n);
elseif max([p_s_n,p_m_n,p_l_n])==p_m_n
    disp('nail as belonging to the class medium');
    disp('The probability of error P (error | nail) =');
    disp(1-p_m_n);
else 
    disp('nail as belonging to the class large');
    disp('The probability of error P (error | nail) =');
    disp(1-p_l_n);
end

disp('P (small | bolt)');
disp(p_s_b);

disp('P (medium | bolt)');
disp(p_m_b);

disp('P (large | bolt)');
disp(p_l_b);

if max([p_s_b,p_m_b,p_l_b])==p_s_b
    disp('bolt as belonging to the class small');
    disp('The probability of error P (error | bolt) =');
    disp(1-p_s_b);
elseif max([p_s_b,p_m_b,p_l_b])==p_m_b
    disp('bolt as belonging to the class medium');
    disp('The probability of error P (error | bolt) =');
    disp(1-p_m_b);
else 
    disp('bolt as belonging to the class large');
    disp('The probability of error P (error | bolt) =');
    disp(1-p_l_b);
end

disp('P (small | rivet)');
disp(p_s_r);

disp('P (medium | rivet)');
disp(p_m_r);

disp('P (large | rivet)');
disp(p_l_r);

if max([p_s_r,p_m_r,p_l_r])==p_s_r
    disp('rivet as belonging to the class small');
    disp('The probability of error P (error | rivet) =');
    disp(1-p_s_r);
elseif max([p_s_r,p_m_r,p_l_r])==p_m_r
    disp('rivet as belonging to the class medium');
    disp('The probability of error P (error | rivet) =');
    disp(1-p_m_r);
else 
    disp('rivet as belonging to the class large');
    disp('The probability of error P (error | rivet) =');
    disp(1-p_l_r);
end