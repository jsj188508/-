<?php
// •require： 引入一个文件，运行时编译引入.  require_once('connect.php');
// •require_once： 功能等同于require，只是当这个文件被引用过后，不再编译引入;require('connect.php');

require('connect.php');

echo "
	<div class='top'>
		<ul>
			<li id='welcome'>欢迎来到高炉家</li>
			<li id='login'>请登录</li>
			<li id='zhuce'>免费注册</li>
			<li id='out_name'>退出</li>
		</ul>
		<ol>
			<li><a  id='loginName'>我的高炉家</a></li>
			<li><a  id='gwc'>我的购物车</a></li>
		</ol>
		<div class='mar'>
			<!-- 注册面ban -->
			<div id='zc'>
				<a class='close'>&times;</a>
				<h1 class='Disgintitle'>欢迎来注册高炉家会员！</h1>
				<form action='#'>
					<p>
						<label for='name' class='name'></label>
						<input type='text' id='name'  placeholder='请输入注册用户名' >
						<u id='information'></u>
					</p>
					<p>
						<label for='pwd' class='pwd'></label>
						<input type='password' id='pwd' placeholder='请输入注册密码' >
						<u id='information2'></u>
					</p>
					<button class='zc_btn' id='zc_btn'>提 交</button>
				</form>
			</div>
			<!-- 登录 -->
			<div id='ulogin' style='display:none;'>
				<h1 class='Disgintitle'>欢迎登录高炉家！</h1>
				<a class='close'>&times;</a>
				<form action='#'>
					<p>
						<label for='uname' class='name'></label>
						<input type='text' id='uname' placeholder='请输入用户名'>
						<u id='informat'></u>
					</p>
					<p>
						<label for='upwd' class='pwd'></label>
						<input type='password' id='upwd'  placeholder='请输入密码'>
						<u id='informat2'></u>
					</p>
					<button id='login_btn' class='zc_btn'>提 交</button>
					<button id='loginZcBtn' class='zc_btn'>注 册</button>
				</form>
			</div>
			<!-- 设置用户的信息-->	
			<div id='userDesgin'>
				<a class='close'>&times;</a>
				<h1 class='Disgintitle'>欢迎来设置您的信息！</h1>
				<p>
					<label for='oldPWD' class='pwd'></label>
					<input type='password' id='oldPWD' placeholder='请输入你旧的登录密码'/>
					<b class='autoShow'>⌒</b>
					<u class='oldPWDHtml'></u>	
				</p>

				<p>
					<label for='newPWD' class='pwd'></label>
					<input type='password' id='newPWD' placeholder='请输入你新的登录密码'/>	
					<b class='autoShow'>⌒</b>
					<u class='newPWDHtml'></u>	
				</p>

				<p>
					<label for='actualName'></label>
					<input type='text' id='actualName' placeholder='请输入您的实名'/>	
				</p>

				<p>
					<label for='DesginPhone'></label>
					<input type='text' id='DesginPhone' placeholder='请输入你的手机号'/>	
					
				</p>
				<p class='DesginPurpose'>
					<label for='DesginPurpose'></label>
					<input type='text' placeholder='省份' id='DesginPurpose'/><input type='text' placeholder='市' id='userCity'/><input type='text' placeholder='县/区' id='userArea'/><input type='text' placeholder='街' id='userblock'/>
					
				</p>

				

				<p>
					<button id='DesginOK'>提交信息</button><button id='DesginCancel'>重置信息</button>
				</p>
				<dl id='desginFinish'></dl>
			</div>	
		</div>
	</div>
	<nav>
		<span class='logo'></span>
			<ul>
				<li id='index' class=navActive>首&nbsp;页<p>index</p></li>
				<li id='product'>公司产品<p>product</p></li>
				<li id='biness'> 品牌故事<p>biness</p></li>
				<li id='Process'>制作工艺<p>process</p></li>
				<li id='contact'>联系我们<p>contact</p></li>
			</ul>
			<b id='navshow'>≡</b>
			<p class='search'>
				<input type='text' id='search' placeholder='请输入要搜索的关键字' >
				<input type='button'  id='search_btn' >
			</p>
	</nav>
	";