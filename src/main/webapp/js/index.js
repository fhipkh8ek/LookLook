/**
 * Created by ASUS on 2017/3/19.
 */
window.onload=function(){
    var wrap=document.getElementById('wrap'),
        pic=document.getElementById('pic').getElementsByTagName("li"),
        list=document.getElementById('list').getElementsByTagName('li'),
        index=0,
        timer=null;

    // ���岢�����Զ����ź���
    timer = setInterval(autoPlay, 3000);

    // ��껮����������ʱֹͣ�Զ�����
    wrap.onmouseover = function () {
        clearInterval(timer);
    }

    // ����뿪��������ʱ������������һ��
    wrap.onmouseout = function () {
        timer = setInterval(autoPlay, 3000);
    }
    // �����������ֵ���ʵ�ֻ����л�����Ӧ��ͼƬ
    for (var i = 0; i < list.length; i++) {
        list[i].onmouseover = function () {
            clearInterval(timer);
            index = this.innerText - 1;
            changePic(index);
        };
    };

    function autoPlay () {
        if (++index >= pic.length) index = 0;
        changePic(index);
    }

    // ����ͼƬ�л�����
    function changePic (curIndex) {
        for (var i = 0; i < pic.length; ++i) {
            pic[i].style.display = "none";
            list[i].className = "";
        }
        pic[curIndex].style.display = "block";
        list[curIndex].className = "on";
    }

};