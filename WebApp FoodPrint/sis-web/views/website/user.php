<!--
=========================================================
* Material Kit 2 - v3.0.0
=========================================================

* Product Page:  https://www.creative-tim.com/product/material-kit
* Copyright 2021 Creative Tim (https://www.creative-tim.com)
* Coded by www.creative-tim.com

 =========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->
<!DOCTYPE html>
<html lang="en" itemscope itemtype="http://schema.org/WebPage">

<head>
    <!-- SITE TITTLE -->
    <title><?=PROJECT_NAME?> | Your Recipes</title>
    <?= view('website/head') ?>

    <style>
        .card-top-recipes{
            transition: 0.3s;
            cursor: pointer;
        }

        .card-top-recipes:hover{
            margin-top: -50px;
        }
    </style>
</head>

<body class="about-us bg-gray-200">

<!-- Navbar Transparent -->
<?= view('website/navbar')?>
<!-- End Navbar -->

<!-- -------- START HEADER 7 w/ text and video ------- -->
<header class="bg-gradient-dark" >
    <div class="page-header min-vh-50" style="background-image: url('<?=asset('img/userHeaderImg.jpg')?>');">
        <span class="mask bg-gradient-dark opacity-6"></span>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center mx-auto my-auto">
                    <h1 class="text-white"><span class="text-success">YOUR</span> Recipes!</h1>
                    <p class="lead mb-4 text-white">
                        This is your <span class="text-success">personalized section</span>, do you have ingredients in your refrigerator?<br>
                        Compose <span class="text-success">your favorite recipes</span>!</p>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- -------- END HEADER 7 w/ text and video ------- -->
<div class="card card-body shadow-xl mx-3 mx-md-4 mt-n6">
    <!-- Section with four info areas left & one card right with image and waves -->
    <section>
        <div class="container pt-4 text-center">
            <h2>Your <span class="text-success">own profile</span> 🤤</h2>
            <span>
                In your personal area you will receive recommendations about FOODS that you can enjoy. <br>
                You will be able to find recommendations based on your personal characteristics, that you can simply select during account's creation, or modify when it
                is been created.
            </span>
            <a class="my-5 btn btn-success btn-lg align-items-center" href="<?=routeFullUrl('/user/login')?>">
                Go to account area
            </a>
        </div>
    </section>
    <!-- card section -->
    <div class="container">
        <div class="row mt-7 mb-7">
            <div class="col-12 text-center mb-3">
                <h3 class="text-secondary">Visit <span class="text-success">other section</span> to know more about foot print of your recipes!</h3>
                <span class="text-muted">Surf between different section and discover more about Foods' CO2 emission, Water foot print and more!</span>
            </div>
            <div class="col-md-4 my-5">
                <div class="card h-100 card-body shadow-sm text-center card-top-recipes" onclick="location.href='<?=routeFullUrl('/')?>'">
                    <div class="rounded-3" style="background-image: url('<?=asset('img/homepageCard.jpg')?>'); background-repeat: no-repeat; height: 200px; background-size: cover; background-position: center;"></div>
                    <h3 class="mt-2"><span class="text-primary">Home</span> page!</h3>
                    <span class="text-muted">Search new recipes by their ingredient and discover what you can cook with low ambient impact!</span>
                </div>
            </div>
            <div class="col-md-4 my-5">
                <div class="card h-100 card-body shadow-sm text-center card-top-recipes" onclick="location.href='<?=routeFullUrl('/worst-recipes')?>'">
                    <div class="rounded-3" style="background-image: url('<?=asset('img/worstFoodCard.jpg')?>'); background-repeat: no-repeat; height: 200px; background-size: cover; background-position: center;"></div>
                    <h3 class="mt-2"><span class="text-danger">Worst 10</span> Recipes 💀</h3>
                    <span class="text-muted">Which are the most polluting recipes? Which recipes consume the most water in their production? <br> Find the results here!</span>
                </div>
            </div>
            <div class="col-md-4 my-5">
                <div class="card h-100 card-body shadow-sm text-center card-top-recipes" onclick="location.href='<?=routeFullUrl('/top-recipes')?>'">
                    <div class="rounded-3" style="background-image: url('<?=asset('img/bestFoodsCard.jpg')?>'); background-repeat: no-repeat; height: 200px; background-size: cover"></div>
                    <h3 class="mt-2"><span class="text-warning">Top 10</span> Recipes 🚀</h3>
                    <span class="text-muted">Here you can find the best 10 recipes, based on carbon footprint, water footprint and healthy of recipes! Visit this section to know more </span>
                </div>
            </div>
        </div>
    </div>
    <!-- -------- START PRE-FOOTER 1 w/ SUBSCRIBE BUTTON AND IMAGE ------- -->
    <section class="my-5 pt-5 d-none">
        <div class="container">
            <div class="row">
                <div class="col-md-6 m-auto">
                    <h4>Contact us for everything!</h4>
                    <p class="mb-4">
                        If you want talk about our data our strategy and also,
                        write your email and you will get answer in the shortest possible time!
                    </p>
                    <div class="row">
                        <div class="col-12 my-2">
                            <div class="input-group input-group-outline">
                                <label class="form-label">Email Here...</label>
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class="col-12 my-2">
                            <div class="input-group input-group-outline">
                                <label class="form-label">Some text here...</label>
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class="col-12 my-2 text-center">
                            <button type="button" class="btn bg-gradient-success">Send info <i class="fas fa-sign-in"></i></button>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 ms-auto">
                    <div class="position-relative">
                        <img class="max-width-50 w-100 position-relative z-index-2" src="<?=asset('img/pcHomepage.png')?>" alt="image">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- -------- END PRE-FOOTER 1 w/ SUBSCRIBE BUTTON AND IMAGE ------- -->
</div>

<?=view("website/footer")?>

<!--   Core JS Files   -->
<script src="<?= asset("themes/material-kit-2-3.0.0/assets/js/core/popper.min.js") ?>" type="text/javascript"></script>
<script src="<?= asset("themes/material-kit-2-3.0.0/assets/js/core/bootstrap.min.js") ?>" type="text/javascript"></script>
<script src="<?= asset("themes/material-kit-2-3.0.0/assets/js/plugins/perfect-scrollbar.min.js") ?>"></script>
<!--  Plugin for TypedJS, full documentation here: https://github.com/inorganik/CountUp.js -->
<script src="<?= asset("themes/material-kit-2-3.0.0/assets/js/plugins/countup.min.js") ?>"></script>
<!--  Plugin for Parallax, full documentation here: https://github.com/wagerfield/parallax  -->
<script src="<?= asset("themes/material-kit-2-3.0.0/assets/assets/js/plugins/parallax.min.js") ?>"></script>
<!-- Control Center for Material UI Kit: parallax effects, scripts for the example pages etc -->
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDTTfWur0PDbZWPr7Pmq8K3jiDp0_xUziI"></script>
<script src="<?= asset("themes/material-kit-2-3.0.0/assets/js/material-kit.min.js?v=3.0.0")?>" type="text/javascript"></script>


<script>
    // get the element to animate
    var element = document.getElementById('count-stats');
    var elementHeight = element.clientHeight;

    // listen for scroll event and call animate function

    document.addEventListener('scroll', animate);

    // check if element is in view
    function inView() {
        // get window height
        var windowHeight = window.innerHeight;
        // get number of pixels that the document is scrolled
        var scrollY = window.scrollY || window.pageYOffset;
        // get current scroll position (distance from the top of the page to the bottom of the current viewport)
        var scrollPosition = scrollY + windowHeight;
        // get element position (distance from the top of the page to the bottom of the element)
        var elementPosition = element.getBoundingClientRect().top + scrollY + elementHeight;

        // is scroll position greater than element position? (is element in view?)
        if (scrollPosition > elementPosition) {
            return true;
        }

        return false;
    }

    var animateComplete = true;
    // animate element when it is in view
    function animate() {

        // is element in view?
        if (inView()) {
            if (animateComplete) {
                if (document.getElementById('state1')) {
                    const countUp = new CountUp('state1', document.getElementById("state1").getAttribute("countTo"));
                    if (!countUp.error) {
                        countUp.start();
                    } else {
                        console.error(countUp.error);
                    }
                }
                if (document.getElementById('state2')) {
                    const countUp1 = new CountUp('state2', document.getElementById("state2").getAttribute("countTo"));
                    if (!countUp1.error) {
                        countUp1.start();
                    } else {
                        console.error(countUp1.error);
                    }
                }
                if (document.getElementById('state3')) {
                    const countUp2 = new CountUp('state3', document.getElementById("state3").getAttribute("countTo"));
                    if (!countUp2.error) {
                        countUp2.start();
                    } else {
                        console.error(countUp2.error);
                    };
                }
                animateComplete = false;
            }
        }
    }

    if (document.getElementById('typed')) {
        var typed = new Typed("#typed", {
            stringsElement: '#typed-strings',
            typeSpeed: 90,
            backSpeed: 90,
            backDelay: 200,
            startDelay: 500,
            loop: true
        });
    }
</script>
<script>
    if (document.getElementsByClassName('page-header')) {
        window.onscroll = debounce(function() {
            var scrollPosition = window.pageYOffset;
            var bgParallax = document.querySelector('.page-header');
            var oVal = (window.scrollY / 3);
            bgParallax.style.transform = 'translate3d(0,' + oVal + 'px,0)';
        }, 6);
    }
</script>
</body>

</html>
