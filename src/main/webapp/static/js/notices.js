/**
 * Created by zhanngp on 15/9/15.
 *
 */


function tempNotice(hostName,rootUrl){

    var temp=tempNotice.Notices(hostName,rootUrl);
    temp.init();
}

(function(){

    function Notices(hostName,rootUrl){

        var _this=this;

        _this.hostname=hostName;
        _this.rootUrl=rootUrl;
        _this.noticeFlag=$.cookie("noticeFlag");
        _this.u="";

//        <div id="alterConetntDiv" class="alert alert-info alert-dismissible" role="alert" style="display: none;">
//        <button type="button" id="close"  class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true" style="color:#fff">&times;</span></button>
//      	<div id="alterConetnts" style="color:#fff;text-align:center;font-size:15px;font-weight: 600" >
//      	</div>
//      </div> 


        _this.initDiv=function(){
            var noticeDiv=document.createElement("div");
            noticeDiv.innerHTML="<div id='alterConetntDiv' class='alert alert-info alert-dismissible' role='alert' " +
                "style='display: none;'>"+
                "<button type='button' id='close'  class='close' data-dismiss='alert' aria-label='Close'><span " +
                "aria-hidden='true' >&times;</span></button>"+"<div id='alterConetnts' style='color:#fff;text-align:center;font-weight: 600" +
                "font-size:15px;' ></div></div> ";
            document.body.appendChild(noticeDiv);

        }


        //设置cookie
        _this.setCookie=function(key,value){
            var date = new Date();
            date.setTime(date.getTime() + (1 * 20 *60 * 1000));
            $.cookie(key,value,{expires:date,path:'/',domain:_this.hostname});
        }


        //判断是否需要启动定时器
        _this.isStartInterval=function (){
            //初始时
            if (typeof (_this.noticeFlag)=="undefined" ){
                return true;
            }

            //选择了关闭
            if (_this.noticeFlag != "0" ){
                return true;
            }

            return false;

        }

        //启动定时器
        _this.startNoticeTimer=function (){

        	_this.u = setInterval(this.startRequest(), 1000*60*5);
        };

        //查询数据
        _this.startRequest = function(){
            console.log("time");
            $.ajax({
                url : _this.rootUrl+"/notice/get?callback=?",
                dataType: 'JSONP',
                async:false,
                success : function(data) {
                    if (data.success) {
                        _this.setCookie("noticeFlag","1");
                        _this.noticeFlag ="1";

                        $('#alterConetntDiv').show();
                        $('#alterConetnts').html(data.msg);

                        clearInterval(_this.u);
                    }
                }
            });
        };

        _this.init=function (){

            _this.initDiv();

            if (_this.isStartInterval()) {
                _this.startRequest();

            }

            //页面初始化时未显示
            if (typeof (_this.noticeFlag)=="undefined" ){
                _this.startNoticeTimer();
            }


            $('#close').click(function(){
                console.log("close");
                _this.setCookie("noticeFlag","0");
                _this.noticeFlag='0';

            });


        };
        return _this;
    }
    tempNotice.Notices=Notices;
}());



