
    clc;
    clear;
    txtpath='I:\��־��\��ɰ��08.txt';
    B=importdata(txtpath);
    
    subdata=num2cell(B.data);
    num=length(B.textdata(:,1));
    data2=[B.textdata,subdata];
    fidin=fopen(txtpath,'r');
    i=1;
    n=1;
    data3=[];
    num_name=tabulate(B.textdata(:,2));
       
      for i=1:num
       
        if strcmp(data2(i,2),{'Building'})         
                                 
             data3=[data3;data2(i,:)];
        end
        
      end    
       fid = fopen('I:\��־��\building.txt','w');
       [nrows,ncol]= size(data3);
       
          for row = 1:nrows
              formatSpec ='%s %s %d %d %d %d\r\n';  % ---%s ���ַ�����%f�Ǹ����͡�\r\n�ǻ���
              fprintf(fid,formatSpec,data3{row,:}); %������data6�е�������formatSpec��ʽд��txt��
              
          end
       fclose(fid);
 