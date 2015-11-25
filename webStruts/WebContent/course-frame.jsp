<div class="col m4 grid">
	<figure class="effect-lily">
		<img src="images/courses/${param.image}" alt="course-image"/>
		<figcaption>
			<div>
				<h2>${param.title}</h2>
				<p>
					<a class="waves-effect waves-light btn" href="course-info?id=${param.id}">
					Learn more
					</a>
					<a class="btn-floating btn disabled">$${param.fee}</a>
				</p>
			</div>
		</figcaption>
	</figure>
</div>