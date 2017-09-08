<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="col-xs-12 col-md-7 col-sm-9">
		<a class="icon" href="{config.relative_path}/category/{../slug}" title="{../name}">
			<span class="fa-stack fa-2x">
				<i style="color: {../bgColor};" class="fa fa-circle fa-stack-2x"></i>
				<i style="color: {../color};" class="fa fa-stack-1x {../icon}"></i>
			</span>
		</a>

		<h1 class="title">
			<a href="{config.relative_path}/category/{../slug}" itemprop="url">{../name}</a>
		</h1>
		
		<span class="description">
		{../descriptionParsed}
		</span>
		
		<ul class="children">
			<!-- BEGIN ../children -->
			<li>
				<a href="{config.relative_path}/category/{../slug}">
					<span class="fa-stack">
						<i style="color: {../bgColor};" class="fa fa-circle fa-stack-2x"></i>
						<i style="color: {../color};" class="fa fa-stack-1x {../icon}"></i>
					</span>
					{../name}
				</a>
			</li>
			<!-- END ../children -->
		</ul>
	</div>

	<div class="col-md-1 hidden-sm hidden-xs stats">
		<div class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</div>
		<small>[[global:topics]]</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<div class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</div>
		<small>[[global:posts]]</small>
	</div>
	<div class="col-md-3 col-sm-3 teaser hidden-xs" component="topic/teaser">
		<div class="card" style="border-color: {../bgColor}">
			<!-- BEGIN ../posts -->
			<!-- IF @first -->
			<div component="category/posts">
				<div>
					<a href="{config.relative_path}/topic/{../topic.slug}">{../topic.title}</a>
				</div>
				<small>
					<a href="{config.relative_path}/user/{../user.userslug}">
						<!-- IF ../user.picture -->
						<img class="user-img" title="{../user.username}" alt="{../user.username}" src="{../user.picture}" title="{../user.username}"/>
						<!-- ELSE -->
						<span class="user-icon user-img" title="{../user.username}" style="background-color: {../user.icon:bgColor};">{../user.icon:text}</span>
						<!-- ENDIF ../user.picture -->
						{../user.username}
					</a>
					<a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
						<small class="timeago" title="{../timestampISO}"></small>
					</a>
				</small>
			</div>
			<!-- ENDIF @first -->
			<!-- END ../posts -->
		
			<!-- IF !../posts.length -->
			<div component="category/posts">
				<div class="post-content">
					[[category:no_new_posts]]
				</div>
			</div>
			<!-- ENDIF !../posts.length -->
		</div>
	</div>
</li>