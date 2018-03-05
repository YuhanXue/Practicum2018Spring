				<footer class="site-footer">

					<nav class="site-nav">
						<?php
						//定义数组
						$args=array(
							//menu的name和location
							'theme_location' => 'footer'
						);
						?>
						<?php wp_nav_menu($args);?> <!--WordPress自己的方法-->
					</nav>

					<p><?php bloginfo('name'); ?> - &copy; <?php echo date('Y') ; ?></p>

				</footer>

			</div><!--for container-->

		<?php wp_footer();?> <!--和之前同理-->
	</body>
</html>