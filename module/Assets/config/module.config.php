<?php

declare(strict_types=1);

namespace Assets;

use Assets\Controller\DefaultController;
use Laminas\Router\Http\Literal;
use Laminas\ServiceManager\Factory\InvokableFactory;

return [
            'router' => [
                'routes' => [
                    'assets' => [
                        'type' => Literal::class,
                        'options' => [
                            'route' => '/',
                            'defaults' => [
                                'controller' => DefaultController::class,
                                'action' => 'main'
                            ],
                        ],
                    ],
                ],
            ],

            'controllers' => [
                'factories' => [
                    DefaultController::class => InvokableFactory::class,
                ],
            ],

            'view_manager' => [
                'template_map' => [
                    'default/main' => __DIR__ . '/../view/assets/default/main.phtml',
                ],
                'template_path_stack' => [
                    'assets' => __DIR__ . '/../view',
                ]
            ]
        ];