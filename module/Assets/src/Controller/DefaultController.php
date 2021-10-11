<?php

declare(strict_types=1);

namespace Assets\Controller;

use Laminas\Mvc\Controller\AbstractActionController;
use Laminas\View\Model\ViewModel;

class DefaultController extends AbstractActionController
{
    public function mainAction(){
        return new ViewModel();
    }
}