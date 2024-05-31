m=imread('C:\Users\Asus\Downloads\logo_SA.png');
imshow(m)
figure;
m_kadr=m(215:260,100:350,:);
imshow(m_kadr)
figure;
imshow(m_kadr)
m_kadr_1=m(260:370,200:310,:);

imshow(m_kadr_1)
imwrite(m_kadr,'C:\Users\Asus\Downloads\m_kadr.png', 'png')
