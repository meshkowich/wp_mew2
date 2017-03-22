    <footer>
      <div class="container">
        <?php 
        if (function_exists('dynamic_sidebar') && dynamic_sidebar('Footer Widgets'))?> 
      </div>
      <p>
        <i class="fa fa-creative-commons" aria-hidden="true"></i>
      <?php echo date("Y") . " "; echo bloginfo(name) . "."; ?>
      You are smart and funny and everything's going to be okay.
      </p>
    </footer> 

  </div>
</div>