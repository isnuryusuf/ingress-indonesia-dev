.class public final Lcom/nianticproject/ingress/o/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/nianticproject/ingress/o/g;->a:I

    return-void
.end method

.method private static a(Ljava/io/File;)Landroid/media/ExifInterface;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const-string/jumbo v1, "PhotoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "File \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" does not exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-object v0

    .line 131
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 137
    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    const-string/jumbo v3, "PhotoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Problem opening an ExifInterface to \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 452
    const-string/jumbo v0, ".png"

    invoke-static {v0}, Lcom/nianticproject/ingress/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {}, Lcom/nianticproject/ingress/o/g;->a()Ljava/io/File;

    move-result-object v1

    .line 454
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/o/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 458
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 459
    invoke-static {p0, v2}, Lcom/nianticproject/ingress/o/g;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 460
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;IZJZ)Lcom/nianticproject/ingress/o/i;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    if-gez p2, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Size must never be less than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    .line 303
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/o/g;->h(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 304
    cmp-long v0, v0, p4

    if-lez v0, :cond_1

    .line 305
    new-instance v0, Lcom/nianticproject/ingress/o/i;

    sget-object v1, Lcom/nianticproject/ingress/o/h;->b:Lcom/nianticproject/ingress/o/h;

    invoke-direct {v0, p1, v1}, Lcom/nianticproject/ingress/o/i;-><init>(Landroid/net/Uri;Lcom/nianticproject/ingress/o/h;)V

    .line 385
    :goto_0
    return-object v0

    .line 310
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 312
    const-string/jumbo v0, "Loading photo from %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    if-eqz p6, :cond_9

    invoke-static {p0, p1}, Lcom/nianticproject/ingress/o/g;->e(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 316
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/o/g;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 317
    const-string/jumbo v1, "Made public copy at %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v7, v0

    .line 320
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 322
    if-nez v1, :cond_2

    .line 323
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Null InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_2
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 330
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 331
    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 333
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v3, v0

    .line 334
    double-to-int v0, v3

    div-int/2addr v0, v2

    .line 335
    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 337
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 341
    if-nez v3, :cond_3

    .line 342
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Null InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 348
    :cond_3
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 349
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 350
    const/4 v0, 0x0

    invoke-static {v3, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 352
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 355
    if-nez v1, :cond_4

    .line 356
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Image decode failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0

    .line 359
    :cond_4
    if-eqz p3, :cond_8

    .line 360
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v5, v0

    .line 361
    int-to-double v8, v2

    cmpl-double v0, v8, v5

    if-lez v0, :cond_5

    .line 363
    new-instance v0, Lcom/nianticproject/ingress/o/i;

    invoke-direct {v0, v1, p1, v7}, Lcom/nianticproject/ingress/o/i;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 366
    :cond_5
    int-to-double v2, v2

    div-double/2addr v2, v5

    .line 367
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v5, v0

    mul-double/2addr v5, v2

    double-to-int v0, v5

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    :goto_2
    if-nez v0, :cond_6

    .line 375
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 378
    :cond_6
    invoke-static {p0, v7}, Lcom/nianticproject/ingress/o/g;->f(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 379
    if-eqz v1, :cond_7

    .line 380
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 381
    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 382
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    :cond_7
    new-instance v1, Lcom/nianticproject/ingress/o/i;

    invoke-direct {v1, v0, p1, v7}, Lcom/nianticproject/ingress/o/i;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    move-object v7, p1

    goto/16 :goto_1
.end method

.method private static a()Ljava/io/File;
    .locals 3

    .prologue
    .line 639
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 641
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "Ingress"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 642
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 646
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter

    .prologue
    .line 658
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nianticproject/ingress/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-static {}, Lcom/nianticproject/ingress/o/g;->a()Ljava/io/File;

    move-result-object v1

    .line 660
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 662
    invoke-static {p0, v2}, Lcom/nianticproject/ingress/o/g;->a(Landroid/content/Context;Ljava/io/File;)V

    .line 663
    return-object v2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 389
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ingress_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/nianticproject/ingress/o/g;->a:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/nianticproject/ingress/o/g;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 677
    if-nez p2, :cond_0

    .line 687
    :goto_0
    return-void

    .line 681
    :cond_0
    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_1

    div-int/lit8 v0, p2, 0x5a

    if-lez v0, :cond_1

    div-int/lit8 v0, p2, 0x5a

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 682
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rotation amount must be 90, 180, or 270"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_2
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/o/g;->f(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 686
    add-int/2addr v0, p2

    rem-int/lit16 v0, v0, 0x168

    .line 687
    const-string/jumbo v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "orientation"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/o/g;->a(Ljava/io/File;I)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot handle a Uri that\'s not file:// or content://, bad Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 435
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "image/png"

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 440
    return-void
.end method

.method private static a(Ljava/io/File;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-static {p0}, Lcom/nianticproject/ingress/o/g;->a(Ljava/io/File;)Landroid/media/ExifInterface;

    move-result-object v1

    .line 200
    if-nez v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 205
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is an illegal value.Supported values: 0, 9, 180, or 270"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :sswitch_0
    const/4 v0, 0x1

    .line 222
    :goto_1
    const-string/jumbo v2, "Orientation"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_0
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string/jumbo v1, "PhotoUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Problem saving the EXIF tags to \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 210
    :sswitch_1
    const/4 v0, 0x6

    .line 211
    goto :goto_1

    .line 213
    :sswitch_2
    const/4 v0, 0x3

    .line 214
    goto :goto_1

    .line 216
    :sswitch_3
    const/16 v0, 0x8

    .line 217
    goto :goto_1

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 414
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 416
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 417
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 422
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    .line 419
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 422
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 423
    return-void
.end method

.method private static a(Landroid/net/Uri;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 512
    if-nez p0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "com.android.gallery3d.provider"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.google.android.gallery3d.provider"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/o/g;->f(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 500
    const-string/jumbo v2, ".png"

    invoke-static {v2}, Lcom/nianticproject/ingress/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/o/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 501
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/nianticproject/ingress/o/g;->a(Ljava/io/File;I)V

    .line 502
    return-object v1
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 532
    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const-string/jumbo v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    invoke-static {p1}, Lcom/nianticproject/ingress/o/g;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    throw v0

    .line 549
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Don\'t understand the scheme of %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/a/d/u;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 567
    invoke-static {p1}, Lcom/nianticproject/ingress/o/g;->a(Landroid/net/Uri;)Z

    move-result v0

    .line 568
    if-eqz v0, :cond_1

    move-object v0, v6

    .line 597
    :cond_0
    :goto_0
    return-object v0

    .line 574
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 576
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 577
    :cond_2
    const-string/jumbo v0, "PhotoUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error querying image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 578
    if-eqz v1, :cond_3

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    .line 581
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nianticproject/ingress/o/g;->a(Ljava/io/File;)Landroid/media/ExifInterface;

    move-result-object v2

    .line 583
    if-nez v2, :cond_6

    .line 584
    const-string/jumbo v2, "PhotoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to open an EXIF interface for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 585
    if-eqz v1, :cond_5

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v6

    goto :goto_0

    .line 587
    :cond_6
    const/4 v0, 0x2

    :try_start_3
    new-array v0, v0, [F

    .line 588
    invoke-virtual {v2, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v2

    if-nez v2, :cond_8

    .line 589
    const-string/jumbo v0, "PhotoUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Image has no EXIF geo location: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 590
    if-eqz v1, :cond_7

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v6

    goto/16 :goto_0

    .line 594
    :cond_8
    const/4 v2, 0x0

    :try_start_4
    aget v2, v0, v2

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/google/a/d/u;->b(DD)Lcom/google/a/d/u;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 596
    if-eqz v1, :cond_0

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 596
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_9

    .line 597
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 596
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 700
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 702
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 713
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v6

    .line 715
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 721
    if-nez v0, :cond_0

    move v0, v6

    .line 757
    :goto_0
    return v0

    .line 727
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v6

    .line 729
    goto :goto_0

    .line 736
    :cond_1
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    :goto_1
    if-nez v0, :cond_4

    move v0, v6

    .line 752
    goto :goto_0

    .line 737
    :cond_2
    const-string/jumbo v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 741
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 743
    :cond_3
    const-string/jumbo v0, "PhotoUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot handle this Uri\'s scheme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 744
    goto :goto_0

    .line 755
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-static {}, Lcom/nianticproject/ingress/o/g;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 757
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    const-string/jumbo v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/o/g;->g(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 109
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 108
    :cond_1
    const-string/jumbo v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/nianticproject/ingress/o/g;->a(Ljava/io/File;)Landroid/media/ExifInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    const-string/jumbo v2, "PhotoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unhandled ExifInterface ORIENTATION value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " using 0 degrees"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot handle a Uri that\'s not file:// or content://, bad Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static g(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 252
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "orientation"

    aput-object v0, v2, v6

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 254
    if-nez v1, :cond_0

    move v0, v6

    .line 265
    :goto_0
    return v0

    .line 259
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 263
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static h(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 611
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 613
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 627
    :cond_0
    :goto_0
    return-wide v0

    .line 618
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_size"

    aput-object v1, v2, v0

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 620
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 621
    :cond_2
    const-string/jumbo v0, "PhotoUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error querying file: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 622
    if-eqz v2, :cond_3

    .line 627
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 624
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 626
    if-eqz v2, :cond_0

    .line 627
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_5

    .line 627
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 626
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
