<%@ Page Language="C#" AutoEventWireup="true" CodeFile="drj.aspx.cs" Inherits="Drj" %>

<!DOCTYPE html>
<html>
	<head>
		<link href="style.css" rel="stylesheet" type="text/css">
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<meta name="description" content="Greatest dunkers in history" />
		
		<title>NBA Greatest Dunkers Dr Julis Erving and Dominque Wilkins</title>
		
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

		<script type="text/javascript">		    /*panel jquery*/
		    $(document).ready(function () {
		        $("#trigger").click(function () {
		            $(".panel").toggle("fast");
		            $(this).toggleClass("active");
		            return false;
		        });
		    });
		</script>
		
		<script type="text/javascript">		    /*sun&moon jquery*/
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
					font_color: "#282828",
					msg: "COME BACK HOME",
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
					font_color: "#8B2252",
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
		
		<script type="text/javascript">		                   /*garage jquery*/

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
                        <span>Dr. J</span>
                        <span>Dominique Wilkins</span>
						<span>'Air' Jordan</span>
                        <span>Kobe Bryant</span>
						<span>Lebron James</span>
						<span>Vince Carter</span>
						<span>Spud Webb</span>
						<span>'Reign Man' Kemp</span>
						<span>Blake Griffin</span>
						<span>Nate Robinson</span>			
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
							<a><img id="slide-img-12" src="Images/2_dunks1.jpg" class="slide" alt="Dr Julius Erwing" /></a>
							<a><img id="slide-img-13" src="Images/2_dunks2.jpg" class="slide" alt="The Doctor is operating" /></a>
							<a><img id="slide-img-14" src="Images/2_dunks3.jpg" class="slide" alt="dunking on Larry Bird" /></a>
                            <a><img id="slide-img-15" src="Images/2_dunks4.jpg" class="slide" alt="Human highlight film" /></a>
                            <a><img id="slide-img-16" src="Images/2_dunks5.jpg" class="slide" alt="Nique" /></a>
                            <a><img id="slide-img-17" src="Images/2_dunks6.jpg" class="slide" alt="Nique" /></a>
							
							<div id="slide-controls">
							 <p id="slide-client" class="text"><strong>post: </strong><span></span></p>
							 <p id="slide-desc" class="text"></p>
							 <p id="slide-nav"></p>
							</div>
						</div>
		
					</div>
					   <script type="text/javascript">
					       if (!window.slider) var slider = {}; slider.data = [
                            { "id": "slide-img-12", "client": "Dr. J", "desc": "Doctor is in the house!" },
							{ "id": "slide-img-13", "client": "Dr. J!!", "desc": "The Doctor is operating" },
							{ "id": "slide-img-14", "client": "...same damn player", "desc": "dunking on Larry Bird"},
                            { "id": "slide-img-15", "client": "Dominique Wilkins", "desc": "Human highlight film" },
							{ "id": "slide-img-16", "client": "...same damn player", "desc": "Nique"},
                            { "id": "slide-img-17", "client": "Dominique Wilkins", "desc": "Human highlight film" }];
					   </script>
			</div>
                			
			<div id="bodi">
                <div id="booklet_pages">
                    <a href="#/page/2" title="Return to Page 1">Erving</a>
                    <a href="#/page/12" title="Page 10">Wilkins</a>
                </div>
				<div class="book_wrapper">    
					<a id="next_page_button"></a>
					<a id="prev_page_button"></a>
					<div id="loading" class="loading">Loading pages...</div>
					
					<div id="mybook">
						<img class="cover" src="Images/cover2.jpg" alt="Dr. J." />
						<p class="cover_p">Dr Julius Erving</p>
						<div class="b-load">
							<div>
                                <img src="Images/2_1.jpg" alt="Julis Erving" />
								<h1>Julis Erving</h1>
								<p>Julius Winfield Erving II, nicknamed Dr. J (born February 22, 1950 in Roosevelt, New York) is a retired American 
                                professional basketball player and Basketball Hall of Famer. He was the dominant player of his era, an innovator who 
                                changed the way the game was played. He was a wizard with the ball, performing feats never before seen: midair spins 
                                and whirls punctuated by powerful slam dunks. Erving was one of the first players to make extemporaneous individual 
                                expression an integral part of the game, setting the style of play that would prevail in the decades to follow. </p>
                                <p>Erving initially went to the ABA. Although Virginia already had ABA scoring champ Charlie Scott, Erving began to 
                                contribute immediately. He later said he realized he was in his element during his first game as a rookie. </p>
							</div>
							<div>
								<img src="Images/2_2.jpg" alt="Julis Erving" />
                                <h5>ABA All-star game</h5>
                                <h3> - ABA Slam Dunk Contest winner (1976)</h3>
							</div>
							<div>
								<img src="Images/2_3.jpg" alt="Julis Erving" />
								<p>On a drive to the hole, he was challenged by the Kentucky Colonels' 7-2 Artis Gilmore and 6-9 Dan Issel. "I went
                                 in between both of them and just hung there and waited for them to come down. Then I dunked on them so hard I fell 
                                 on my back," recalled Erving in the Boston Globe. "Just doing that made me confident to go after anyone, anytime, 
                                 anywhere, without any fear." </p>				
							</div>
							<div>
								<img src="Images/2_4.jpg" alt="Julis Erving" />
							</div>
							<div>
								<img src="Images/2_5.jpg" alt="Julis Erving" />
							</div>
							<div>
								<img src="Images/2_6.jpg" alt="Julis Erving" />
							</div>
                            <div>
								<img src="Images/2_7.jpg" alt="Julis Erving" />
                                <p>The ABA era was over. The NBA had to have Julius Erving and to get him, they had to take the rest of the league, too.
                                 So the Nets, San Antonio Spurs, Denver Nuggets, and Indiana Pacers were absorbed into the NBA for the next season, with
                                  the rest of the ABA players dispersed in a draft. On the eve of the 1976-77 campaign, the greatest player in the game was 
                                  locked in a salary dispute with the Nets. When it couldn't be resolved, New York sold him for $3 million to the Philadelphia 
                                  76ers only 24 hours before the start of the season.</p>
							</div>
                             <div>
								<img src="Images/2_8.jpg" alt="Julis Erving 1981 Sixers" />
                                <h5>Erving in 1981 with the Sixers, no-fro</h5>
							</div>
                            <div>
								<img src="Images/2_9.jpg" alt="Julis Erving Sixers" />
                                <h5>Dunking in the face of Robert Parish</h5>
							</div>
                            <div>
                                <img src="Images/2_10.jpg" alt="Dominique Wilkins" />
								<h1>Dominique Wilkins</h1>
								<p>"'Nique" (also nicknamed "The Human Highlight Film" is one of the most prolific scorers and best dunkers in
                                 NBA history. Dominique Wilkins has been the symbol of the Atlanta Hawks franchise ever since he joined the team 
                                 out of the Univ. of Georgia in 1982. Wilkins played the game with a breathtaking combination of power and grace, finishing
                                 his career as the Hawks all-time leading scorer.</p>
							</div>
                             <div>
                                <img src="Images/2_11.jpg" alt="Dominique Wilkins" />
                                <p> Wilkins joined the Hawks as the VP of Basketball in 2004 and continues to
                                 bring the same passion and enthusiasm to the organization that brought the fans to their feet in his playing days. </p>
							</div>
                             <div>
                                <img src="Images/2_12.jpg" alt="Dominique Wilkins" />
                                <h5>1990 Slam Dunk Contest</h5>
                                <h3> - NBA Slam Dunk Contest winner (1985, 1990)</h3>
							</div>
                            <div>
                                <img src="Images/2_13.jpg" alt="Dominique Wilkins" />
                                <p>A nine-time NBA All-Star and the winner of two NBA Slam Dunk Contests, Wilkins registered 26,668 points and 7,169 rebounds 
                                in his NBA career. His career points total ranks him ninth in NBA career scoring, and he is one of just 14 players to total 
                                25,000 points or more for a career. </p>
							</div>
                            <div>
                                <img src="Images/2_14.jpg" alt="Dominique Wilkins" />
							</div>
                            <div>
                                <img src="Images/2_15.jpg" alt="Dominique Wilkins" />
                                <h5>1988 Slam Dunk Contest</h5>
							</div>
                            <div>
                                <img src="Images/2_16.jpg" alt="Dominique Wilkins" />
							</div>
                             <div>
                                <img src="Images/2_17.jpg" alt="Dominique Wilkins" />
							</div>
                             <div>
                                <img src="Images/2_18.jpg" alt="Dominique Wilkins" />
							</div>
                             <div>
                                <img src="Images/2_19.jpg" alt="Dominique Wilkins" />
							</div>
                            <div>
                                <img src="Images/2_20.jpg" alt="Dominique Wilkins" />
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
			
			
		<footer>
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
			<p id='foot'>Copyright MADX 2012</p>
		</footer>
	</div>
    <div id="fot_image">
	
	</div>
	</body>


</html>