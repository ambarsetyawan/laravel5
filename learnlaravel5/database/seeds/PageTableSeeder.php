<?php

use Illuminate\Database\Seeder;
use App\Page;

class PageTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		DB::table('pages')->delete();
		for($i = 0; $i < 10; $i++){
			Page::create([
				'title'		=>	'Title'.$i,
				'slug'		=>	'first-page',
				'body'		=>	'Body '.$i,
				'user_id'	=>	1,
				]);
		}

		// $this->call('UserTableSeeder');
	}

}
