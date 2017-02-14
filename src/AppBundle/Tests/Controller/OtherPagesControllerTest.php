<?php

namespace AppBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class OtherPagesControllerTest extends WebTestCase
{
    public function testShowabout()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', 'about');
    }

    public function testShowlegalmentions()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', 'legalMentions');
    }

}
