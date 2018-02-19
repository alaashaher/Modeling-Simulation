function output = Naive_Bayes_classify(path)
[num, exam, weather ] = xlsread(path);
[H, W] = size(weather);
[H1, W1] = size(num);

count_yes_exam=0;
count_no_exam=0;

count_fine_weather=0;
count_hot_weather=0;
count_rainy_weather=0;

count_yes_go_to_movie=0;
count_no_go_to_movie=0;

count_yes_go_to_movie_50_150=0;
count_no_go_to_movie_50_150=0;

count_yes_has_exam = 0 ;
count_no_has_exam = 0 ;

count_yes_has_exam_go_yes = 0;
count_yes_has_exam_go_no = 0;

count_yes_w_fine = 0; 
count_no_w_fine = 0;

count_yes_w_hot = 0; 
count_no_w_hot = 0;

count_yes_w_rainy = 0; 
count_no_w_rainy = 0;

p_yes_exam = strcmpi('yes',weather(:, 2));
p_no_exam = strcmpi('no',weather(: ,2 ));

p_fine_weather = strcmpi('fine',weather(:, 3));
p_hot_weather = strcmpi('hot',weather(:, 3));
p_rainy_weather = strcmpi('rainy',weather(:, 3));

p_yes_go_to_movie = strcmpi('yes',weather(:, 4));
p_no_go_to_movie = strcmpi('no',weather(: ,4 ));
z = zeros();                                                         
for i = 1 : H1
    if (num(i) >=50 && num(i) <= 150)
        z(i)=1;
    end
    
end
f = find(z==1);
display(f);
u = weather(f+1,:);
p_yes_go_to_movie_50_150 = strcmpi('yes',u(:, 4));
p_no_go_to_movie_50_150 = strcmpi('no',u(: ,4 ));
for i = 1:length(f)
    if(p_yes_go_to_movie_50_150(i) == 1)
         count_yes_go_to_movie_50_150 = count_yes_go_to_movie_50_150+1;
     elseif(p_no_go_to_movie_50_150(i) == 1)
         count_no_go_to_movie_50_150 = count_no_go_to_movie_50_150 + 1 ;
     end
end

for i=1 : H
	
     if(p_yes_exam(i)==1)
         count_yes_exam = count_yes_exam+1;
     elseif(p_no_exam(i) == 1)
         count_no_exam = count_no_exam + 1 ;
     end
     
     if(p_fine_weather(i)==1)
         count_fine_weather = count_fine_weather+1;
     elseif(p_hot_weather(i) == 1)
         count_hot_weather = count_hot_weather + 1 ;
     elseif(p_rainy_weather(i) == 1)
         count_rainy_weather = count_rainy_weather + 1 ;
     end
     
     if(p_yes_go_to_movie(i)==1)
         count_yes_go_to_movie = count_yes_go_to_movie+1;
     elseif(p_no_go_to_movie(i) == 1)
         count_no_go_to_movie = count_no_go_to_movie + 1 ;
     end
     
     if (p_yes_exam(i)==1 && p_yes_go_to_movie(i)==1)
        count_yes_has_exam_go_yes = count_yes_has_exam_go_yes+1;
     elseif(p_yes_exam(i)==1 && p_no_go_to_movie(i)==1)
        count_yes_has_exam_go_no = count_yes_has_exam_go_no +1;
     end
     if (p_fine_weather(i) == 1 && p_yes_go_to_movie(i) == 1 )
        count_yes_w_fine = count_yes_w_fine + 1 ;
     elseif (p_fine_weather(i) == 1 && p_no_go_to_movie(i) == 1)
         count_no_w_fine = count_no_w_fine + 1 ;
     end
end

display(count_yes_has_exam_go_yes);
display(count_yes_has_exam_go_no);
display(count_yes_w_fine);
display(count_no_w_fine);
prior_probability_go_to_movie_yes = count_yes_go_to_movie/(H-1);  
prior_probability_go_to_movie_no = count_no_go_to_movie/(H-1);
display(count_yes_go_to_movie);
display(count_no_go_to_movie);

% prior_probability_fine = 
% prior_probability_hot = 
% prior_probability_rainy = 
% 
% prior_probability_has_exams_yes = 
% prior_probability_has_exams_no =
% 
% prior_probability_money
% prior_probability_go_to_movie_yes

prior_probability_go_to_movie_yes_and_money_50_150 = count_yes_go_to_movie_50_150/count_yes_go_to_movie;
prior_probability_go_to_movie_no_and_money_50_150 = count_no_go_to_movie_50_150/count_no_go_to_movie;
display(count_yes_go_to_movie_50_150);
display(count_no_go_to_movie_50_150);

 prior_probability_go_to_movie_yes_and_has_exam = count_yes_has_exam_go_yes /count_yes_go_to_movie ;
 prior_probability_go_to_movie_no_and_has_exam = count_yes_has_exam_go_no  / count_no_go_to_movie ;
 display(prior_probability_go_to_movie_yes_and_has_exam);
  display(prior_probability_go_to_movie_no_and_has_exam);
  
  prior_probability_go_to_movie_yes_and_w_fine = count_yes_w_fine /count_yes_go_to_movie ;
  prior_probability_go_to_movie_no_and_w_fine = count_no_w_fine /count_no_go_to_movie ;
  display(prior_probability_go_to_movie_yes_and_w_fine);
  display(prior_probability_go_to_movie_no_and_w_fine);
  
  Prob_goes_to_movie_yes_all = prior_probability_go_to_movie_yes * prior_probability_go_to_movie_yes_and_has_exam * prior_probability_go_to_movie_yes_and_money_50_150 * prior_probability_go_to_movie_yes_and_w_fine ;
  Prob_goes_to_movie_no_all = prior_probability_go_to_movie_no * prior_probability_go_to_movie_no_and_has_exam * prior_probability_go_to_movie_no_and_money_50_150 * prior_probability_go_to_movie_no_and_w_fine ;
  display(Prob_goes_to_movie_yes_all);
  display(Prob_goes_to_movie_no_all);
  if(Prob_goes_to_movie_yes_all > Prob_goes_to_movie_no_all)
     display('you will go to movie'); 
     output = 'yes';
  else
      display('you will not go to movie');
      output = 'no';
  end
  