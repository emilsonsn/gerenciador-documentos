<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Dashboard')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('breadcrumb'); ?>
    <ul class="breadcrumb mb-0">
        <li class="breadcrumb-item">
            <a href="<?php echo e(route('dashboard')); ?>"><h1><?php echo e(__('Dashboard')); ?></h1></a>
        </li>
    </ul>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    
    <div class="row">
        <div class="col-12">
            <div class="card overall-revenuetbl">
                <div class="card-header">
                    <h4><?php echo e(__('Document By Category')); ?></h4>
                </div>
                <div class="card-body">
                    <div id="document_by_cat"></div>
                </div>
            </div>
        </div>
        
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('script-page'); ?>
    <script>
        var documentByCategoryData=<?php echo json_encode($result['documentByCategory']['data']); ?>;
        var documentByCategory= <?php echo json_encode($result['documentByCategory']['category']); ?>;
        var documentBySubCategoryData= <?php echo json_encode($result['documentBySubCategory']['data']); ?>;
        var documentBySubCategory= <?php echo json_encode($result['documentBySubCategory']['category']); ?>;
    </script>

    <script src="<?php echo e(asset('js/custom/dashboard.js')); ?>"></script>

<?php $__env->stopPush(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/emilsonsn/desktop/Emilson/Projetos/9 - Setembro/geradoc-master/main_file/resources/views/dashboard/index.blade.php ENDPATH**/ ?>