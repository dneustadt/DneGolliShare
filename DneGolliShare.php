<?php

namespace DneGolliShare;

use Doctrine\ORM\Tools\SchemaTool;
use Shopware\Components\Plugin;
use Shopware\Components\Plugin\Context\ActivateContext;
use Shopware\Components\Plugin\Context\DeactivateContext;
use Shopware\Components\Plugin\Context\InstallContext;
use Shopware\Components\Plugin\Context\UninstallContext;
use Shopware\Components\Plugin\Context\UpdateContext;
use Symfony\Component\Config\Util\XmlUtils;
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
