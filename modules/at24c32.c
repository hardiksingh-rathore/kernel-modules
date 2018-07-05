#include <linux/init.h>
#include <linux/i2c.h>
#include <linux/module.h>

static const struct i2c_device_id at24_ids[] = {
        { "24c00",      0 },
        { "24c01",      0 },
        { "24cs01",     0 },
        { "24c02",      0 },
        { "24cs02",     0 },
        { "24mac402",   0 },
        { "24mac602",   0 },
        { "spd",        0 },
        { "24c04",      0 },
        { "24cs04",     0 },
        { "24c08",      0 },
        { "24cs08",     0 },
        { "24c16",      0 },
        { "24cs16",     0 },
        { "24c32",      0 },
        { "24cs32",     0 },
        { "24c64",      0 },
        { "24cs64",     0 },
        { "24c128",     0 },
        { "24c256",     0 },
        { "24c512",     0 },
        { "24c1024",    0 },
        { "at24",       0 },
        { /* END OF LIST */ }
};
MODULE_DEVICE_TABLE(i2c, at24_ids);

static int at24_probe(struct i2c_client *client, 
		const struct i2c_device_id * i2c_id_table)
{
	printk("i2c addr = %x\n", client->addr);
	return 0;
}

static int at24_remove(struct i2c_client *client)
{

	printk("at24_remove\n");
	return 0;
}

static struct i2c_driver at24_driver = {
	.probe = at24_probe,
	.remove = at24_remove,
	.id_table = at24_ids
};


static int at24_init(void)
{
	printk("at24_init\n");
	i2c_add_driver(&at24_driver);
	return 0;
}

static void at24_exit(void)
{
	i2c_del_driver(&at24_driver);
	printk("at24_exit\n");
}


module_init(at24_init);
module_exit(at24_exit);
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Hardik");
