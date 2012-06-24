<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="main" %>

<!DOCTYPE html>
<html>
	<head>
		<link href="style.css" rel="stylesheet" type="text/css">
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<meta name="description" content="Greatest dunkers in history" />
		
		<title>NBA Greatest Dunkers</title>
		
		<script type="text/javascript" src="js/jquery.js">		    /*Slideshow jquery*/
		</script>
		
		<script type="text/javascript" src="js/scripts.js"></script>
				
		<script src="js/modernizr-1.5.min.js" type="text/javascript">		    /*garage jquery*/
		</script>
			
		<script src="js/jquery-1.4.4.min.js" type="text/javascript" >		    /* booklet jquery*/
		</script>
		
		<script type="text/javascript" src="js/jquery.bgpos.js">		    /*Menu jquery; Needs to load AFTER jQuery (jquery-1.4.4)*/
		</script>
		
		<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
		<script src="js/jquery.booklet.1.1.0.min.js" type="text/javascript"></script>

        <!--[if IE]>
         <script src="js/jquery.booklet.1.3.1.min.js" type="text/javascript"></script>
        <![endif]-->

        <!--[if lt IE 9]> 
			<style>
				.rw-wrapper{ display: none; } 
				.rw-sentence-IE{ display: block;  }
			</style>
		<![endif]-->
				
		<script type="text/javascript">		                           /*panel jquery*/
		    $(document).ready(function () {
		        $("#trigger").click(function () {
		            $(".panel").toggle("fast");
		            $(this).toggleClass("active");
		            return false;
		        });
		    });
		</script>
		
		<script type="text/javascript">                                 /*sun&moon jquery*/
		    $(document).ready(function () {
		        function myDate() {
		            var tHour = new Date().getHours();

		            if (tHour > 5 && tHour < 20) {
		                $("#sun").show();
		                $("#moon").hide();
		                $("#sun").fadeTo('slow', 1);

		                switch (tHour) {
		                    case 6:
		                        $("#sun").animate({ marginTop: "660" }, 1200);
		                        break;
		                    case 7:
		                        $("#sun").animate({ marginTop: "610" }, 1200);
		                        break;
		                    case 8:
		                        $("#sun").animate({ marginTop: "560" }, 1200);
		                        break;
		                    case 9:
		                        $("#sun").animate({ marginTop: "510" }, 1200);
		                        break;
		                    case 10:
		                        $("#sun").animate({ marginTop: "460" }, 1200);
		                        break;
		                    case 11:
		                        $("#sun").animate({ marginTop: "410" }, 1200);
		                        break;
		                    case 12:
		                        $("#sun").animate({ marginTop: "360" }, 1200);
		                        break;
		                    case 13:
		                        $("#sun").animate({ marginTop: "310" }, 1200);
		                        break;
		                    case 14:
		                        $("#sun").animate({ marginTop: "260" }, 1200);
		                        break;
		                    case 15:
		                        $("#sun").animate({ marginTop: "210" }, 1200);
		                        break;
		                    case 16:
		                        $("#sun").animate({ marginTop: "160" }, 1200);
		                        break;
		                    case 17:
		                        $("#sun").animate({ marginTop: "110" }, 1200);
		                        break;
		                    case 18:
		                        $("#sun").animate({ marginTop: "60" }, 1200);
		                        break;
		                    case 19:
		                        $("#sun").animate({ marginTop: "10" }, 1200);
		                        break;
		                }
		            }

		            else {
		                $("#moon").show();
		                $("#sun").hide();
		                $("#moon").fadeTo('slow', 1);

		                switch (tHour) {
		                    case 20:
		                        $("#moon").animate({ marginTop: "510" }, 1200);
		                        break;
		                    case 21:
		                        $("#moon").animate({ marginTop: "460" }, 1200);
		                        break;
		                    case 22:
		                        $("#moon").animate({ marginTop: "410" }, 1200);
		                        break;
		                    case 23:
		                        $("#moon").animate({ marginTop: "360" }, 1200);
		                        break;
		                    case 24:
		                        $("#moon").animate({ marginTop: "310" }, 1200);
		                        break;
		                    case 0:
		                        $("#moon").animate({ marginTop: "260" }, 1200);
		                        break;
		                    case 1:
		                        $("#moon").animate({ marginTop: "210" }, 1200);
		                        break;
		                    case 2:
		                        $("#moon").animate({ marginTop: "160" }, 1200);
		                        break;
		                    case 3:
		                        $("#moon").animate({ marginTop: "110" }, 1200);
		                        break;
		                    case 4:
		                        $("#moon").animate({ marginTop: "60" }, 1200);
		                        break;
		                    case 5:
		                        $("#moon").animate({ marginTop: "10" }, 1200);
		                        break;
		                }
		            }
		        }
		        myDate();
		    });
		
		</script>
		
		<script type="application/javascript">												/*tv canvas*/
            window.requestAnimFrame = (function(callback){
                return window.requestAnimationFrame ||
                window.webkitRequestAnimationFrame ||
                window.mozRequestAnimationFrame ||
                window.oRequestAnimationFrame ||
                window.msRequestAnimationFrame ||
                function(callback){
                    window.setTimeout(callback, 1000 / 60);
                };
            })();
            
			function wrapText(context, text, x, y, maxWidth, lineHeight) {
				var words = text.split(" ");
				var line = "";

				for(var n = 0; n < words.length; n++) {
				  var testLine = line + words[n] + " ";
				  var metrics = context.measureText(testLine);
				  var testWidth = metrics.width;
				  if(testWidth > maxWidth) {
					context.fillText(line, x, y);
					line = words[n] + " ";
					y += lineHeight;
				  }
				  else {
					line = testLine;
				  }
				}
				context.fillText(line, x, y);
			 }
			
            function animate(myRectangle, animProp){
			   if (animProp.animate) {
				var canvas = document.getElementById("canvas1");
				var context = canvas.getContext("2d");
				var maxWidth = 160;
				var lineHeight = 25;
				var x = (canvas.width - maxWidth) / 2;
				var y = 50;
			 
				// update
				var date = new Date();
				var time = date.getTime();
				var amplitude = 100;
				var period = 2000; // in ms
				var centerX = canvas.width / 1.5 - myRectangle.width / 1;
				var nextX = amplitude * Math.sin(time * 2 * Math.PI / period) + centerX;
				myRectangle.x = nextX;
				
			 
				// clear
				context.clearRect(0, 0, canvas.width, canvas.height);
			 
				// draw
				context.beginPath();
				context.rect(myRectangle.x, myRectangle.y, myRectangle.width, myRectangle.height);
				context.fillStyle = myRectangle.color;
				context.fill();
				context.lineWidth = myRectangle.borderWidth;
				context.strokeStyle = myRectangle.stroke_color;
				context.globalAlpha = 1;
				context.stroke();
			 
				context.font = myRectangle.font;
				context.fillStyle = myRectangle.font_color;
				wrapText(context, myRectangle.msg, x, y, maxWidth, lineHeight);
				//context.fillText(myRectangle.msg, myRectangle.posx, myRectangle.posy);
				// request new frame
				requestAnimFrame(function(){
					animate(myRectangle, animProp);
				});
			}
		    }
			
			function animate2(canvas, animProp){
			 if (animProp.animate) {
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                var date = new Date();
                var time = date.getTime();
                
                // update
                var widthScale = Math.sin(time / 200) * 0.1 + 0.9;
                var heightScale = -1 * Math.sin(time / 200) * 0.1 + 0.9;
                
                // clear
                context.clearRect(0, 0, canvas.width, canvas.height);
                
                // draw
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(0, 0, 60, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#8ED6FF";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();
                
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(-30, -30, 15, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "white";
                context.fill();
                
                // request new frame
                requestAnimFrame(function(){
                    animate2(canvas,animProp);
                });
			}
            }
            
            function animate3(canvas, animProp){
			 if (animProp.animate) {
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                var date = new Date();
                var time = date.getTime();
                
                // update
                var widthScale = Math.sin(time / 400) * 0.1 + 0.9;
                var heightScale = -1 * Math.sin(time / 100) * 0.1 + 0.9;
                
                // clear
                context.clearRect(0, 0, canvas.width, canvas.height);
                
                // draw
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(0, 0, 60, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#EEAD0E";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();
                
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(20, -20, 5, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "white";
                context.fill();

                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(-20, -20, 5, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "white";
                context.fill();
                
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(0, 10, 5, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "white";
                context.fill();

                // request new frame
                requestAnimFrame(function(){
                    animate3(canvas,animProp);
                });
			}
            }

             function animate4(canvas, animProp){
			 if (animProp.animate) {
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                var date = new Date();
                var time = date.getTime();
                
                // update
                var widthScale = Math.sin(time / 300) * 0.1 + 0.2;
                var heightScale = -1 * Math.sin(time / 300) * 0.1 + 0.2;
                
                // clear
                context.clearRect(0, 0, canvas.width, canvas.height);
                
                // draw
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(0, 0, 60, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#8B008B";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();
                
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(-130, 0, 60, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#8B008B";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();

                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(-260, 0, 60, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#8B008B";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();

                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(130, 0, 60, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#8B008B";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();

                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(260, 0, 60, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#8B008B";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();
                   
                // request new frame
                requestAnimFrame(function(){
                    animate4(canvas,animProp);
                });
			}
            }

            function animate5(canvas, animProp){
			 if (animProp.animate) {
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                var date = new Date();
                var time = date.getTime();
                
                // update
                var widthScale = Math.sin(time / 330) * 0.5 + 0.5;
                var heightScale = -1 * Math.sin(time / 330) * 0.1 + 0.9;
                
                // clear
                context.clearRect(0, 0, canvas.width, canvas.height);
                
                // draw
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(0, 0, 70, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#CD661D";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();
                
                
                // request new frame
                requestAnimFrame(function(){
                    animate5(canvas,animProp);
                });
			}
            }

            function animate6(canvas, animProp){
			 if (animProp.animate) {
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                var date = new Date();
                var time = date.getTime();
                
                // update
                var widthScale = Math.sin(time / 400) * 0.1 + 0.9;
                var heightScale = -1 * Math.sin(time / 400) * 0.2 + 0.8;
                
                // clear
                context.clearRect(0, 0, canvas.width, canvas.height);
                
                // draw
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(0, 0, 60, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#8ED6FF";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();
                
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(20, -10, 50, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "white";
                context.fill();
                
                // request new frame
                requestAnimFrame(function(){
                    animate6(canvas,animProp);
                });
			}
            }

             function animate7(canvas, animProp){
			 if (animProp.animate) {
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                var date = new Date();
                var time = date.getTime();
                
                // update
                var widthScale = Math.sin(time / 350) * 0.7 + 0.3;
                var heightScale = -1 * Math.sin(time / 350) * 0.3 + 0.7;
                
                // clear
                context.clearRect(0, 0, canvas.width, canvas.height);
                
                // draw
                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(0, 0, 60, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#218868";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();

                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(-60, 0, 20, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#141414";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();  

                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(60, 0, 20, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#141414";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();

                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(50, 50, 20, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#141414";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();

                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(-50, 50, 20, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#141414";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();

                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(50, -50, 20, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#141414";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();

                context.beginPath();
                context.save();
                context.translate(canvas.width / 2, canvas.height / 2);
                context.scale(widthScale, heightScale);
                context.arc(-50, -50, 20, 0, 2 * Math.PI, false);
                context.restore();
                context.fillStyle = "#141414";
                context.fill();
                context.lineWidth = 2;
                context.strokeStyle = "#555";
                context.stroke();
                               
                // request new frame
                requestAnimFrame(function(){
                    animate7(canvas,animProp);
                });
			}
            }

            	
			function event1(){
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");

                var myRectangle = {
                    x: 0,
                    y: 0,
                    width: 250,
                    height: 250,
                    borderWidth: 1,
					color: "#CDC9C9",
					stroke_color: "black",
					font: "Bold 40px san-serif",
					font_color: "#8B2252",
					msg: "YOU ARE HOME",
                };
                
                var animProp = {
                    animate: false
                };
                
                document.getElementById("home").addEventListener("mouseover", function(){
                    if (animProp.animate) {
                        animProp.animate = false;
                    }
                    else {
                        animProp.animate = true;
                        animate(myRectangle, animProp);					
                    }
                });
				document.getElementById("home").addEventListener("mouseout", function(){
					animProp.animate = false;
					context.clearRect(0, 0, canvas.width, canvas.height);
				});
					
            };
			
			function event2(){
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                var myRectangle = {
                    x: 0,
                    y: 130,
                    width: 120,
                    height: 1,
                    borderWidth: 1,
					color: "green",
					stroke_color: "red",
					font: "Italic 30px san-serif",
					font_color: "#282828",
					msg: "Dr. Julius Erving & Dominique Wilkins",
                };
                
                var animProp = {
                    animate: false
                };

                document.getElementById("player1").addEventListener("mouseover", function(){
                    if (animProp.animate) {
                        animProp.animate = false;
                    }
                    else {
                        animProp.animate = true;
                        animate(myRectangle, animProp);					
                    }
                });
				
				document.getElementById("player1").addEventListener("mouseout", function(){
					animProp.animate = false;
					context.clearRect(0, 0, canvas.width, canvas.height);
				});
            };
			
			function event3(){
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                var myRectangle = {
                    x: 0,
                    y: 130,
                    width: 120,
                    height: 1,
                    borderWidth: 1,
					color: "blue",
					stroke_color: "red",
					font: "Italic 30px san-serif",
					font_color: "#282828",
					msg: "Michael Jordan & Vince Carter",
                };
                
                var animProp = {
                    animate: false
                };

                document.getElementById("player2").addEventListener("mouseover", function(){
                    if (animProp.animate) {
                        animProp.animate = false;
                    }
                    else {
                        animProp.animate = true;
                        animate(myRectangle, animProp);					
                    }
                });
				
				document.getElementById("player2").addEventListener("mouseout", function(){
					animProp.animate = false;
					context.clearRect(0, 0, canvas.width, canvas.height);
				});
            };

			function event6_tv(){
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                                
                var animProp = {
                    animate: false
                };

                document.getElementById("tv_bot").addEventListener("mouseover", function(){
                    if (animProp.animate) {
                        animProp.animate = false;
                    }
                    else {
                        animProp.animate = true;
                        animate2(canvas,animProp);					
                    }
                });
				
				document.getElementById("tv_bot").addEventListener("mouseout", function(){
					animProp.animate = false;
					context.clearRect(0, 0, canvas.width, canvas.height);
				});
				
				document.getElementById("canvas1").addEventListener("mouseover", function(){
                    if (animProp.animate) {
                        animProp.animate = false;
                    }
                    else {
                        animProp.animate = true;
                        animate2(canvas,animProp);					
                    }
                });
				
				document.getElementById("canvas1").addEventListener("mouseout", function(){
					animProp.animate = false;
					context.clearRect(0, 0, canvas.width, canvas.height);
				});
            };

            function event7(){
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                                
                var animProp = {
                    animate: false
                };

                document.getElementById("banner_top").addEventListener("mouseover", function(){
                    if (animProp.animate) {
                        animProp.animate = false;
                    }
                    else {
                        animProp.animate = true;
                        animate3(canvas,animProp);					
                    }
                });
				
				document.getElementById("banner_top").addEventListener("mouseout", function(){
					animProp.animate = false;
					context.clearRect(0, 0, canvas.width, canvas.height);
				});
				
            };

            function event8(){
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                                
                var animProp = {
                    animate: false
                };

                document.getElementById("slide-holder").addEventListener("mouseover", function(){
                    if (animProp.animate) {
                        animProp.animate = false;
                    }
                    else {
                        animProp.animate = true;
                        animate4(canvas,animProp);					
                    }
                });
				
				document.getElementById("slide-holder").addEventListener("mouseout", function(){
					animProp.animate = false;
					context.clearRect(0, 0, canvas.width, canvas.height);
				});	
				
            };

            function event9(){
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                                
                var animProp = {
                    animate: false
                };

                document.getElementById("sun").addEventListener("mouseover", function(){
                    if (animProp.animate) {
                        animProp.animate = false;
                    }
                    else {
                        animProp.animate = true;
                        animate5(canvas,animProp);					
                    }
                });
				
				document.getElementById("sun").addEventListener("mouseout", function(){
					animProp.animate = false;
					context.clearRect(0, 0, canvas.width, canvas.height);
				});	
				
            };

            function event10(){
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                                
                var animProp = {
                    animate: false
                };

                document.getElementById("moon").addEventListener("mouseover", function(){
                    if (animProp.animate) {
                        animProp.animate = false;
                    }
                    else {
                        animProp.animate = true;
                        animate6(canvas,animProp);					
                    }
                });
				
				document.getElementById("moon").addEventListener("mouseout", function(){
					animProp.animate = false;
					context.clearRect(0, 0, canvas.width, canvas.height);
				});	
				
            };

            function event11(){
				var canvas = document.getElementById("canvas1");
                var context = canvas.getContext("2d");
                                
                var animProp = {
                    animate: false
                };

                document.getElementById("trigger").addEventListener("mouseover", function(){
                    if (animProp.animate) {
                        animProp.animate = false;
                    }
                    else {
                        animProp.animate = true;
                        animate7(canvas,animProp);					
                    }
                });
				
				document.getElementById("trigger").addEventListener("mouseout", function(){
					animProp.animate = false;
					context.clearRect(0, 0, canvas.width, canvas.height);
				});	
				
            };
			
			function initAll(){
				event1();
				event2();
				event3();
				event6_tv();
                event7();
                event8();
                event9();
                event10();
                event11();
			}
			
			window.onload = initAll;	
        </script>
		
		<script type="text/javascript">		                           /*garage jquery*/

		    var jQueryScriptOutputted = false;

		    function initJQuery() {

		        if (typeof (jQuery) == 'undefined') {

		            if (!jQueryScriptOutputted) {
		                jQueryScriptOutputted = true;

		                // Primitive way of loading scripts (no library yet)
		                document.write("<scr" + "ipt src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js\"></scr" + "ipt>");
		            }
		            setTimeout("initJQuery()", 50);

		        } else {

		            // jQuery way of loading scripts
		            $.getScript('js/jquery.backgroundPosition.js', function () {


		                // Set CSS in Firefox (Required to use the backgroundPosition js)
		                $('#shutter1').css({ backgroundPosition: '0px 0px' });
		                $('#shutter2').css({ backgroundPosition: '0px 0px' });
		                $('#shutter3').css({ backgroundPosition: '0px 0px' });
		                $('#shutter4').css({ backgroundPosition: '0px 0px' });

		                // Animate the Shutter  
		                $("#garagedoor a").hover(function () {
		                    $(this).parent().stop().animate({ backgroundPosition: '(0px -100px)' }, 500);
		                }, function () {
		                    $(this).parent().stop().animate({ backgroundPosition: '(0px 0px)' }, 500);
		                });
		            });
		        }
		    }

		    if (!Modernizr.csstransitions) {
		        initJQuery();
		    }
		</script>
	
		<script type="text/javascript">		    /*Menu jquery*/
		    $(function () {
		        $('.a #home, .a #player1, .a #player2')
					.css({ backgroundPosition: "-20px 35px" })
					.mouseover(function () {
					    $(this).stop().animate({ backgroundPosition: "(-20px 94px)" }, { duration: 500 })
					})
					.mouseout(function () {
					    $(this).stop().animate({ backgroundPosition: "(40px 35px)" }, { duration: 200, complete: function () {
					        $(this).css({ backgroundPosition: "-20px 35px" })
					    } 
					    })
					})
		    });
		</script>
	
	</head>
	
	<body>
		<form id="form1" runat="server">
		<div id="big_main">
		<div class="panel">
			<img class="right" src="Images/nba_logo.png" alt="NBA Logo" />
			<div class="columns">
				<div class="colleft">
					<ul>
                        <li><a href="http://www.youtube.com/user/NBA" target="_blank" title="Youtube NBA Channel">Youtube NBA Ch.</a></li>
						<li><a href="http://www.basketball-reference.com/" target="_blank" title="Basketball Reference">Basketball Reference</a></li>
                        <li><a href="http://hoopshype.com/" target="_blank" title="Hoopshype">Hoopshype</a></li>
                        <li><a href="http://sportsillustrated.cnn.com/basketball/nba/?eref=sinav" target="_blank" title="Sports Illustrated NBA">Sports Illustrated</a></li>
					</ul>
				</div>
			
				<div class="colright">
					<ul>
                        <li><a href="http://www.nba.com/" target="_blank" title="Nba home">NBA</a></li>
                        <li><a href="http://espn.go.com/nba/" target="_blank" title="ESPN Nba">ESPN Nba</a></li>
                        <li><a href="http://sports.yahoo.com/nba" target="_blank" title="Sports Yahoo NBA">Sports Yahoo</a></li>
                        <li><a href="http://bleacherreport.com/nba" target="_blank" title="Bleacher Report NBA">Bleacher Report</a></li>
					</ul>
				</div>
			</div>
		</div>

        <section class="rw-wrapper">
				<div class="rw-sentence">
					<span>Poetry in motion</span><br />
					<span>sets wheels in motion</span><br />
					<span>and the words start</span><br />
                    <span>flying</span>
					<div class="rw-words rw-words-1">
						<span>'Air' Jordan</span>
						<span>Dr. J</span>
						<span>Dominique Wilkins</span>
						<span>Vince Carter</span>
						<span>Spud Webb</span>
						<span>'Reign Man' Kemp</span>
						<span>Blake Griffin</span>
						<span>Nate Robinson</span>
						<span>Kobe Bryant</span>
						<span>Lebron James</span>
					</div>
				</div>
		</section>

		<a id="trigger" href="#">Links</a>
		
			<img id="moon" src="Images/moon.png" alt="paper moon"/>
			<img id="banner_top" src="Images/dunkers_banner.jpg" alt="Dunkers banner" />
			<img id="sun" src="Images/sun.png" alt="paper sun"/>
			
			
			<div id="tv">
				<img class="top" src="Images/tv.png" alt="Color TV" />
				<img id="tv_bot" class="bottom" src="Images/tv2.png" alt="Color TV2" />	
			</div>
			
			<canvas id="canvas1" width="180" height="141">
			</canvas>

			<div id="menu1">
                    <ul class="a">
						<li id="home"><a href="default.aspx">Home</a></li>
						<li id="player1"><a href="drj.aspx">Dr.J & Dominque</a></li>
						<li id="player2"><a href="jordan.aspx">Jordan & Carter</a></li>
					</ul>
			</div>
			
			<div class="wrap">
					<div id="slide-holder">
						<div id="slide-runner">
							<a><img id="slide-img-1" src="Images/dunks1.jpg" class="slide" alt="Hangtime" /></a>
							<a><img id="slide-img-2" src="Images/dunks2.jpg" class="slide" alt="Blake Griffin dunk posterizing Mozgov" /></a>
							<a><img id="slide-img-3" src="Images/dunks3.jpg" class="slide" alt="Shaquille O'Neal dunking over Nets" /></a>
							<a><img id="slide-img-4" src="Images/dunks4.jpg" class="slide" alt="Kobe Bryant over Hornets" /></a>
							<a><img id="slide-img-5" src="Images/dunks5.jpg" class="slide" alt="Blake Griffin dunking against Min" /></a>
							<a><img id="slide-img-6" src="Images/dunks6.jpg" class="slide" alt="Lebron James All-Star Game 2011" /></a>
							<a><img id="slide-img-7" src="Images/dunks7.jpg" class="slide" alt="Lebron James Flying" /></a>
							<a><img id="slide-img-8" src="Images/dunks8.jpg" class="slide" alt="Kobe Bryant vs Magic" /></a>
							<a><img id="slide-img-9" src="Images/dunks9.jpg" class="slide" alt="Blake Griffin dunking in Gortat's face" /></a>
							<a><img id="slide-img-10" src="Images/dunks10.jpg" class="slide" alt="Amare Stoudemire over the Celtics" /></a>
							<a><img id="slide-img-11" src="Images/dunks11.jpg" class="slide" alt="Jason Richardson dunk contest" /></a>
							
							<div id="slide-controls">
							 <p id="slide-client" class="text"><strong>post: </strong><span></span></p>
							 <p id="slide-desc" class="text"></p>
							 <p id="slide-nav"></p>
							</div>
						</div>
		
					</div>
					   <script type="text/javascript">
					       if (!window.slider) var slider = {}; slider.data = [
                            { "id": "slide-img-1", "client": "hangtime", "desc": "Some people can fly. you can't" },
							{ "id": "slide-img-2", "client": "Blake Griffin", "desc": "posterizing Mozgov" },
							{ "id": "slide-img-3", "client": "Andrew Bynum", "desc": "Against the Hornets" },
							{ "id": "slide-img-4", "client": "Kobe Bryant", "desc": "Dunking over Hornets" },
							{ "id": "slide-img-5", "client": "Blake Griffin", "desc": "Dunking against Min" },
							{ "id": "slide-img-6", "client": "Lebron James", "desc": "All-Star Game 2011" },
							{ "id": "slide-img-7", "client": "Lebron James", "desc": "Flying :)))" },
							{ "id": "slide-img-8", "client": "Kobe Bryant", "desc": "vs Magic" },
							{ "id": "slide-img-9", "client": "Blake Griffin", "desc": "dunking in Gortat's face" },
							{ "id": "slide-img-10", "client": "Amare Stoudemire", "desc": "over the Celtics" },
							{ "id": "slide-img-11", "client": "Jason Richardson", "desc": "dunk contest"}];
					   </script>
			</div>
             
			<div id="bodi">
                  <div id="booklet_pages">
                    <a href="#/page/2" title="Return to Page 1">Short</a>
                    <a href="#/page/10" title="Page 8">Power</a>
                    <a href="#/page/18" title="Page 16">Power2</a>
                    <a href="#/page/24" title="Page 22">Athletic</a>
                    <a href="#/page/30" title="Page 28">Athletic2</a>
                </div>
				<div class="book_wrapper">
               
					<a id="next_page_button"></a>
					<a id="prev_page_button"></a>
					<div id="loading" class="loading">Loading pages...</div>
					
					<div id="mybook">
						<img class="cover" src="Images/cover1.jpg" alt="Kevin Durant" />
						<p class="cover_p">Kevin Durant</p>
						<div class="b-load">
							<div>
								<img src="Images/1.jpg" alt="Spudd Webb"/>
								<h4>Spud Webb</h4>
								<h1>Short Dunkers</h1>
								<p>Webb, the shortest person to compete in the NBA Slam Dunk Contest, won the event in 1986. His participation surprised
								teammate and defending dunk champion Dominique Wilkins, who had "never seen me dunk before," Webb said. His dunks included
								the elevator two-handed double pump dunk, the one-handed off the backboard one-handed jam, a 360-degree helicopter one-handed
								 dunk, a 180-degree reverse double-pump slam, and finally, the 180-degree reverse two-handed strawberry jam from a lob bounce
								 off the floor. He beat Wilkins with two perfect 150-point scores in the final round. Atlanta coach Mike Fratello said, "Spud kind 
								 of duped him. He told Nique he never had anything prepared, didn't practice for it. So, Nique maybe thought his normal assortment 
								 would be good enough to get through.</p>
							</div>
							<div>
								<img src="Images/2.jpg" alt="Spudd Webb" />
                                <h5>'Bounce pass of the backboard dunk' in the '86 contest</h5>
								<p> - "Spud" is a shortened form of "Sputnik", a nickname given to Webb as a baby by his grandmother. LeBron James considers Spud
                                 Webb to be one of his favorite slam-dunkers of all time. </p><br />
								<h3> - NBA Slam Dunk Contest Champion (1986)</h3>
							</div>
							<div>
								<img src="Images/3.jpg" alt="Kevin Johnson" />
								<h4>Kevin Johnson</h4>
								<p>During Game 4 of the 1994 Western Conference Semifinals, Kevin Johnson pulled off one of best dunks on a big man in NBA history 
								and one of the best dunks period. We don't know how K.J. thought it was a good idea (or even possible) to challenge Hakeem Olajuwon 
								who's about a full foot taller than him, but that dunk was epic! Now dude is the mayor of Sacramento.</p>				
							</div>
							<div>
								<img src="Images/4.jpg" alt="Dee Brown" />
								<h4>Dee Brown</h4>
								<p>Dee Brown is the third shortest player to ever win the NBA Slam Dunk Contest. His "no-look" and Reebok Pump dunks stole the 
								championship from that year's favorite, Shawn Kemp.</p>
                                <h3> - NBA Slam Dunk Contest winner (1991)</h3>
							</div>
							<div>
								<img src="Images/5.jpg" alt="Nate Robinson" />
								<h4>Nate Robinson</h4>
								<p>Little Nate is the only three-time NBA Slam Dunk Contest champion (2006, 2009, 2010). The creativity in his dunk over Spud 
								Webb and the "Krypto-Nate" dunk over 6-foot-11 Dwight Howard have made him a fan favorite.</p>
								<p>During the All-Star weekend, Robinson won the 2006 Sprite Rising Stars Slam Dunk Contest, edging Andre Iguodala 141-140 in an 
								unprecedented overtime, although he took 14 attempts to make his final dunk. In his most memorable dunk of the night, he jumped
								over 1986 champion Spud Webb, and received
								a perfect 50-point score for the dunk.</p>
							</div>
							<div>
								<img src="Images/6.jpg" alt="Nate Robinson" />
                                <h5>Jumping over Spudd Webb in the dunk contest '06</h5>
								<p>Robinson competed in the 2007 Slam Dunk Contest to defend his 2006 title, and came in second place after Gerald Green. In the 
								second round, Green's Boston Celtics teammate Paul Pierce brought out a cardboard cut-out of Robinson to dunk over. But Robinson 
								came out and stood in its place instead, and Green jumped over him to complete the dunk. </p><br />
								<h3> - 3x NBA Slam Dunk Contest champion (2006, 2009, 2010) </h3>	
							</div>
							<div>
								<img src="Images/7.jpg" alt="Nate Robinson" />
								<img src="images/8.jpg" alt="Nate Robinson" />
							
							</div>
							<div>
								<img src="images/9.jpg" alt="Dwight Howard" />
								<h4>Dwight Howard</h4>					
							</div>
							<div>
								<img src="images/10.jpg" alt="Dwight Howard" /> <br/>		
                                <h1>Power Dunkers</h1>
								<p> Howard is the current franchise player and leader of the Magic.
									Howard is one of the game's best finishers; he has led the NBA in dunks in each of the last two seasons. 
									</p>				
								<p>He normally relies on his athleticism to get open for shots, but has demonstrated an increasing awareness of how to 
									play offense, and now regularly employs a jump hook in the post. </p>
								<p> He memorably demonstrated his skill in the 2007 Slam Dunk Contest during the NBA All-Star Weekend, during which he completed 
									an alley oop dunk from teammate Jameer Nelson and slapped a sticker onto the backboard which reached.</p>
                                <h3> - NBA Slam Dunk Champion (2008)</h3>
							
							</div>
							<div>
								<img src="images/11.jpg" alt="Shaquille O'Neal" />
								<h4>Shaquille O'Neal</h4>
								<p>O'Neal was voted the 1999–2000 regular season Most Valuable Player, coming just one vote short of becoming the first unanimous
								MVP in NBA history. Fred Hickman, then of CNN, was the sole voter who did not cast his first place vote for O'Neal, instead choosing 
								Allen Iverson, then of the Philadelphia 76ers who would go on to win MVP the next season. </p>	
							</div>
							<div>
								<img src="images/12.jpg" alt="Shaquille O'Neal" />
								<h5>Shaquille Pulls Down The Entire Basket in '93 Magic vs Nets after monster dunk.</h5>		
							</div>
							<div>
								<img src="images/13.jpg" alt="Blake Griffin" />
								<h4>Blake Griffin</h4>
								<p>Griffin was selected with the first pick of the 2009 NBA Draft by the Los Angeles Clippers.He has established himself as
								a difficult player to defend, proving to be highly effective coming off the pick and roll,
								attacking the basket off the dribble, or in the post. His exceptional leaping and ability to establish position down low 
								allowed him to finish in the top 5 in rebounding during his rookie season. Griffin's rookie season was highlighted by countless
								spectacular dunks; this prowess for dunking culminated in his winning the 2011 Slam Dunk Contest. </p>
								<p>n Griffin's first season in the NBA, he dunked in every game and won the dunk contest by jumping over a car. </p><br />
                                <h3> - NBA Slam Dunk Champion (2011)</h3>	
							</div>
							<div>
								<img src="images/14.jpg" alt="Blake Griffin" />
                                <img src="images/20.jpg" alt="Blake Griffin" />
							</div>
							<div>
								<img src="images/15.jpg" alt="Blake Griffin" />
                                <h5>Posterizing Perkins</h5>							
							</div>
							<div>
								<img src="images/16.jpg" alt="Shawn Kemp" />
								<h4>Shawn Kemp</h4>
                                <p>The Seattle SuperSonics drafted Kemp in the first round of the 1989 NBA Draft and he quickly became a force to be reckoned with.
                                Kemp was one of the NBA's premiere high flyers with outstanding leaping abilities. At the time, he was the youngest player in the NBA.
                                Half court lob passes from Gary Payton to Kemp became a regular sight to see. Together with Payton, Detlef Schrempf, Sam Perkins, Hersey
                                Hawkins, and other stars, they became highly a successful squad. After Kemp's second NBA season, he picked up the nickname "Reign Man."
                                Conflicting accounts attribute this to his love of the Seattle weather as a rookie, as well as his appreciation of the Dustin Hoffman movie
                                 "Rain Man." </p>
                            </div>
                            <div>
								<img src="images/17.jpg" alt="Shawn Kemp" />
                                <h5>Dunking over Dennis Rodman</h5>
							</div>
                            <div>
								<img src="images/18.jpg" alt="Shawn Kemp" />
                                <img src="images/19.jpg" alt="Shawn Kemp" />		
							</div>
                            <div>
								<img src="images/21.jpg" alt="Amare Stoudemire" />
                                <h4>Amare Stoudemire</h4>
							</div>
                            <div>
								<img src="images/22.jpg" alt="Amare Stoudemire" />
                                <h5>Over Tim Duncan</h5>
							</div>
                            <div>
								<img src="images/23.jpg" alt="Taj Gibson" />
                                <h4>Taj Gibson</h4>
							</div>
                             <div>
								<img src="images/24.jpg" alt="Javale McGee" />
                                <h4>Javale McGee</h4>
							</div>
                             <div>
								<img src="images/25.jpg" alt="Kobe Bryant" />
                                <h4>Kobe Bryant</h4>
                                <h3> - NBA Slam Dunk Contest champion (1997)</h3>
							</div>
                            <div>
								<img src="images/26.jpg" alt="Kobe Bryant" />
                                <h1>Various Athletic Dunkers</h1>
								<p>Bryant and then-teammate Shaquille O'Neal led the Lakers to three consecutive NBA championships from 2000 to 2002.
                                 After O'Neal's departure following the 2003–04 season, Bryant became the cornerstone of the Lakers franchise. He led the 
                                 NBA in scoring during the 2005–06 and 2006–07 seasons, setting numerous scoring records in the process. In 2006, Bryant 
                                 scored a career high 81 points against the Toronto Raptors, the second highest number of points scored in a single game in
                                 NBA history, second only to Wilt Chamberlain's 100 point performance. He was awarded the regular season's Most Valuable 
                                 Player Award (MVP) in the 2007–08 season and led his team to the 2008 NBA Finals as the first seed in the Western Conference.
                                 He won his fourth NBA championship in 2009, leading the Lakers to their fifteenth title and won his first Finals MVP award. 
								</p>
							</div>
                             <div>
								<img src="images/27.jpg" alt="Kobe Bryant" />
                                <h5>Demolishing Steve Nash</h5>
							</div>
                             <div>
								<img src="images/28.jpg" alt="LeBron James" />
                                <h4>Lebron James</h4>
                                <p>At 6’8, 250 lbs., LeBron James is so athletic that he can play any position on the basketball court, a rare combination of talent,
                                 size, strength and quickness that has never been seen before.LeBron has a measured vertical leap of 44 inches and reportedly ran a 4.4 
                                 40-yard dash in high school. Many believe James could have had a productive NFL career and might even be able to play
                                 in an NFL game with little practice. James is listed as a small forward, but can also play point guard and shooting guard. This versatility 
                                 has led to his unofficial classification as a "point forward".
                                </p>
							</div>
                            <div>
                                <img src="images/29.jpg" alt="LeBron James" />
                                <h5>Jumping over Lucas</h5>
                            </div>
                            <div>
                                <img src="images/30.jpg" alt="LeBron James" />
                                <img src="images/31.jpg" alt="LeBron James" />
                                <h5>Back when LeBron wore the Cleveleand jersey</h5>
                            </div>
                             <div>
                                <img src="images/32.jpg" alt="J.R. Smith" />
                                <h4>J.R. Smith</h4>
                            </div>
                            <div>
                                <img src="images/33.jpg" alt="Scottie Pippen" />
                                <h4>Scottie Pippen</h4>
                            </div>
                            <div>
                                <img src="images/34.jpg" alt="Harold Miner" />
                                <h4>Harold Miner</h4>
                                <h3> - 2× NBA Slam Dunk Contest Champion (1993, 1995)</h3>
                            </div>
                            <div>
                                <img src="images/35.jpg" alt="Derrick Rose" />
                                <h4>Derrick Rose</h4>
                            </div>
                             <div>
                                <img src="images/36.jpg" alt="Latrell Sprewell" />
                                <h4>Latrell Sprewell</h4>
                            </div>
                            <div>
                                <img src="images/37.jpg" alt="Isaiah Rider" />
                                <h4>Isaiah Rider</h4>
                                <h3> - NBA Slam Dunk Contest Champion (1994)</h3>
                            </div>
                            <div>
                                <img src="images/38.jpg" alt="Tracy McGrady" />
                                <h4>Tracy McGrady</h4>
                            </div>
                            <div>
                                <img src="images/39.jpg" alt="Cedric Ceballos" />
                                <h4>Cedric Ceballos</h4>
                                <h3> - NBA Slam Dunk Contest Champion (1992)</h3>
                            </div>
                             <div>
                                <img src="images/40.jpg" alt="Brent Barry" />
                                <h4>Brent Barry</h4>
                                <h5>The only white player to ever win the Slam Dunk Competition</h5>
                                <h3> - NBA Slam Dunk Contest Champion (1996)</h3>
                            </div>
                            <div>
                                <img src="images/43.jpg" alt="Clyde Drexler" />
                                <h4>Clyde Drexler</h4>
                            </div>
                            <div>
                                <img src="images/41.jpg" alt="Clyde Drexler" />
                                <img src="images/42.jpg" alt="Clyde Drexler" />
                            </div>
						</div>
					</div>
				</div>
			</div>
		
			 <script type="text/javascript">
			     $(function () {
			         var $mybook = $('#mybook');
			         var $bttn_next = $('#next_page_button');
			         var $bttn_prev = $('#prev_page_button');
			         var $loading = $('#loading');
			         var $mybook_images = $mybook.find('img');
			         var cnt_images = $mybook_images.length;
			         var loaded = 0;
			         //preload all the images in the book,
			         //and then call the booklet plugin

			         $mybook_images.each(function () {
			             var $img = $(this);
			             var source = $img.attr('src');
			             $('<img/>').load(function () {
			                 ++loaded;
			                 if (loaded == cnt_images) {
			                     $loading.hide();
			                     $bttn_next.show();
			                     $bttn_prev.show();
			                     $mybook.show().booklet({
			                         name: null,                            // name of the booklet to display in the document title bar
			                         width: 1000,                             // container width
			                         height: 750,                             // container height
			                         speed: 1020,                             // speed of the transition between pages, higher=slower
			                         direction: 'LTR',                           // direction of the overall content organization, default LTR, left to right, can be RTL for languages which read right to left
			                         startingPage: 0,                               // index of the first page to be displayed
			                         easing: 'easeInOutQuad',                 // easing method for complete transition
			                         easeIn: 'easeInQuad',                    // easing method for first half of transition
			                         easeOut: 'easeOutQuad',                   // easing method for second half of transition

			                         closed: true,                           // start with the book "closed", will add empty pages to beginning and end of book
			                         closedFrontTitle: null,                            // used with "closed", "menu" and "pageSelector", determines title of blank starting page
			                         closedFrontChapter: null,                            // used with "closed", "menu" and "chapterSelector", determines chapter name of blank starting page
			                         closedBackTitle: null,                            // used with "closed", "menu" and "pageSelector", determines chapter name of blank ending page
			                         closedBackChapter: null,                            // used with "closed", "menu" and "chapterSelector", determines chapter name of blank ending page
			                         covers: false,                           // used with  "closed", makes first and last pages into covers, without page numbers (if enabled)

			                         pagePadding: 10,                              // padding for each page wrapper
			                         pageNumbers: true,                            // display page numbers on each page

			                         hovers: true,                            // enables preview pageturn hover animation, shows a small preview of previous or next page on hover
			                         overlays: false,                           // enables navigation using a page sized overlay, when enabled links inside the content will not be clickable
			                         tabs: false,                           // adds tabs along the top of the pages
			                         tabWidth: 60,                              // set the width of the tabs
			                         tabHeight: 20,                              // set the height of the tabs
			                         arrows: true,                           // adds arrows overlayed over the book edges
			                         cursor: 'pointer',                       // cursor css setting for side bar areas

			                         hash: true,                           // enables navigation using a hash string, ex: #/page/1 for page 1, will affect all booklets with 'hash' enabled
			                         keyboard: true,                            // enables navigation with arrow keys (left: previous, right: next)
			                         next: null,          			// selector for element to use as click trigger for next page
			                         prev: null,          			// selector for element to use as click trigger for previous page

			                         menu: '#custom-menu',                            // selector for element to use as the menu area, required for 'pageSelector'
			                         pageSelector: false,                           // enables navigation with a dropdown menu of pages, requires 'menu'
			                         chapterSelector: false,                           // enables navigation with a dropdown menu of chapters, determined by the "rel" attribute, requires 'menu'

			                         shadows: true,                            // display shadows on page animations
			                         shadowTopFwdWidth: 166,                             // shadow width for top forward anim
			                         shadowTopBackWidth: 166,                             // shadow width for top back anim
			                         shadowBtmWidth: 50,                              // shadow width for bottom shadow

			                         before: function () { },                    // callback invoked before each page turn animation
			                         after: function () { }                     // callback invoked after each page turn animation
			                     });
			                 }
			             }).attr('src', source);
			         });

			     });
			</script>
			
			
		<footer class='foot'>
           <div id="home_nba">
                <a href="default.aspx"><img src="Images/home2.png" alt="NBA cap" /></a>
				<a href="default.aspx"><img class="bot" src="Images/home.png" alt="NBA cap" /></a>
			</div>
			<ul id="garagedoor">
				<li id="shutter1"><a href="drj.aspx"></a></li>
				<li id="shutter2"><a href="drj.aspx#/page/12"></a></li>
				<li id="shutter3"><a href="jordan.aspx"></a></li>
				<li id="shutter4"><a href="jordan.aspx#/page/16"></a></li>             
			</ul>
            <h2>Total visitors:</h2>
            <asp:Label ID="label1" runat="server" Text="Label"></asp:Label>
			<p id='foot'>Copyright MADX 2012</p>
		</footer>
	</div>
    <div id="fot_image">
	
	</div>
	    </form>
	</body>

</html>