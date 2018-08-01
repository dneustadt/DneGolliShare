<?php

namespace DneGolliShare;

use Shopware\Components\Plugin;
use Shopware\Components\Plugin\Context\ActivateContext;
use Shopware\Components\Plugin\Context\InstallContext;
use Symfony\Component\DependencyInjection\ContainerBuilder;

/**
 * Class DneGolliShare
 *
 * @package DneGolliShare
 */
class DneGolliShare extends Plugin
{
    /**
     * {@inheritdoc}
     */
    public function build(ContainerBuilder $container)
    {
        $container->setParameter('dne_golli_share.plugin_dir', $this->getPath());

        parent::build($container);
    }

    /**
     * {@inheritdoc}
     */
    public function activate(ActivateContext $context)
    {
        $context->scheduleClearCache(
            [
                InstallContext::CACHE_TAG_CONFIG,
                InstallContext::CACHE_TAG_TEMPLATE,
                InstallContext::CACHE_TAG_HTTP,
            ]
        );
    }
}
