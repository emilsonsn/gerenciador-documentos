<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Document')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('breadcrumb'); ?>
    <ul class="breadcrumb mb-0">
        <li class="breadcrumb-item">
            <a href="<?php echo e(route('dashboard')); ?>"><h1><?php echo e(__('Dashboard')); ?></h1></a>
        </li>
        <li class="breadcrumb-item active">
            <a href="#"><?php echo e(__('Document')); ?></a>
        </li>
    </ul>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('card-action-btn'); ?>
    <?php if(Gate::check('create my document')): ?>
        <a class="btn btn-primary btn-sm ml-20 customModal" href="#" data-size="md"
           data-url="<?php echo e(route('document.create')); ?>"
           data-title="<?php echo e(__('Create Document')); ?>"> <i class="ti-plus mr-5"></i><?php echo e(__('Create Document')); ?></a>
    <?php endif; ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <table class="display dataTable cell-border datatbl-advance">
                        <thead>
                        <tr>
                            <th><?php echo e(__('Name')); ?></th>
                            <th><?php echo e(__('Category')); ?></th>
                            <th><?php echo e(__('Sub Category')); ?></th>
                            <th><?php echo e(__('Tags')); ?></th>
                            <th><?php echo e(__('Created By')); ?></th>
                            <th><?php echo e(__('Created At')); ?></th>
                            <th><?php echo e(__('Expired At')); ?></th>
                            <?php if(Gate::check('edit my document') ||  Gate::check('delete my document') || Gate::check('show my document')): ?>
                                <th class="text-right"><?php echo e(__('Action')); ?></th>
                            <?php endif; ?>
                        </tr>
                        </thead>
                        <tbody>
                        <?php $__currentLoopData = $documents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $document): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr role="row">
                                <td><?php echo e($document->name); ?></td>
                                <td>
                                    <?php echo e(!empty($document->category)?$document->category->title:'-'); ?>

                                </td>
                                <td>
                                    <?php echo e(!empty($document->subCategory)?$document->subCategory->title:'-'); ?>

                                </td>
                                <td>
                                   <?php $__currentLoopData = $document->tags(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                       <?php echo e($tag->title); ?> <br>
                                   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </td>
                                <td><?php echo e(!empty($document->createdBy)?$document->createdBy->name:''); ?></td>
                                <td><?php echo e(dateFormat($document->created_at)); ?></td>
                                <?php
                                    $expirationDate = \Carbon\Carbon::parse($document->expiration_date);
                                    $isExpired = $expirationDate->isPast(); // Verifica se a data já passou ou é hoje
                                ?>

                                <td style="color: <?php echo e($isExpired ? 'red' : 'inherit'); ?>;">
                                    <?php echo e(dateFormat($document->expiration_date)); ?>

                                </td>
                                <?php if(Gate::check('edit my document') ||  Gate::check('delete my document') ||  Gate::check('show my document')): ?>
                                    <td class="text-right">
                                        <div class="cart-action">
                                            <?php echo Form::open(['method' => 'DELETE', 'route' => ['document.destroy', $document->id]]); ?>

                                            <?php if(Gate::check('show my document')): ?>
                                                <a class="text-warning" data-bs-toggle="tooltip"
                                                   data-bs-original-title="<?php echo e(__('Show Details')); ?>" href="<?php echo e(route('document.show',\Illuminate\Support\Facades\Crypt::encrypt($document->id))); ?>" > <i data-feather="eye"></i></a>
                                            <?php endif; ?>
                                            <?php if(Gate::check('edit my document')): ?>
                                                <a class="text-success customModal" data-bs-toggle="tooltip"
                                                   data-bs-original-title="<?php echo e(__('Edit')); ?>" href="#"
                                                   data-url="<?php echo e(route('document.edit',$document->id)); ?>"
                                                   data-title="<?php echo e(__('Edit Support')); ?>"> <i data-feather="edit"></i></a>
                                            <?php endif; ?>
                                            <?php if( Gate::check('delete my document')): ?>
                                                <a class=" text-danger confirm_dialog" data-bs-toggle="tooltip"
                                                   data-bs-original-title="<?php echo e(__('Detete')); ?>" href="#"> <i
                                                        data-feather="trash-2"></i></a>
                                            <?php endif; ?>
                                            <?php echo Form::close(); ?>

                                        </div>
                                    </td>
                                <?php endif; ?>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/emilsonsn/desktop/Emilson/Projetos/Setembro/geradoc-master/main_file/resources/views/document/own.blade.php ENDPATH**/ ?>