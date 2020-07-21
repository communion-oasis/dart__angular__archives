import 'dart:html';

class OasisVideo
{
    final String title;
    final String id;

    void download()
    {
        window.open("https://www.youtubepp.com/watch?v=$id","_blank");
        //window.alert("should open");
    }

    OasisVideo(this.title,this.id);
}
