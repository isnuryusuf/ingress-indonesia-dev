.class Lcom/badlogic/gdx/utils/TimSort;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 90
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 91
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    .line 92
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    .line 93
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 145
    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 146
    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 149
    array-length v1, p1

    .line 150
    const/16 v0, 0x200

    if-ge v1, v0, :cond_0

    ushr-int/lit8 v0, v1, 0x1

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 151
    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 160
    const/16 v0, 0x78

    if-ge v1, v0, :cond_1

    const/4 v0, 0x5

    .line 161
    :goto_1
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    .line 162
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    .line 163
    return-void

    .line 150
    :cond_0
    const/16 v0, 0x100

    goto :goto_0

    .line 160
    :cond_1
    const/16 v0, 0x606

    if-ge v1, v0, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :cond_2
    const v0, 0x1d16f

    if-ge v1, v0, :cond_3

    const/16 v0, 0x13

    goto :goto_1

    :cond_3
    const/16 v0, 0x28

    goto :goto_1
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    if-ne p3, p1, :cond_3

    add-int/lit8 v1, p3, 0x1

    .line 236
    :goto_0
    if-ge v1, p2, :cond_2

    .line 237
    aget-object v4, p0, v1

    move v0, v1

    move v3, p1

    .line 246
    :goto_1
    if-ge v3, v0, :cond_1

    .line 247
    add-int v2, v3, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 248
    aget-object v5, p0, v2

    invoke-interface {p4, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_0

    move v0, v2

    .line 249
    goto :goto_1

    .line 251
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 252
    goto :goto_1

    .line 260
    :cond_1
    sub-int v0, v1, v3

    .line 262
    packed-switch v0, :pswitch_data_0

    .line 269
    add-int/lit8 v2, v3, 0x1

    invoke-static {p0, v3, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    :goto_2
    aput-object v4, p0, v3

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :pswitch_0
    add-int/lit8 v0, v3, 0x2

    add-int/lit8 v2, v3, 0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    .line 266
    :pswitch_1
    add-int/lit8 v0, v3, 0x1

    aget-object v2, p0, v3

    aput-object v2, p0, v0

    goto :goto_2

    .line 273
    :cond_2
    return-void

    :cond_3
    move v1, p3

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 296
    add-int/lit8 v1, p1, 0x1

    .line 297
    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    .line 300
    :cond_0
    add-int/lit8 v0, v1, 0x1

    aget-object v1, p0, v1

    aget-object v2, p0, p1

    invoke-interface {p3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_3

    .line 301
    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/TimSort;->reverseRange([Ljava/lang/Object;II)V

    .line 309
    :cond_2
    sub-int/2addr v0, p1

    goto :goto_0

    .line 305
    :cond_3
    :goto_2
    if-ge v0, p2, :cond_2

    aget-object v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 795
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p1

    .line 797
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 798
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 799
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 800
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 801
    add-int/lit8 v0, v0, 0x1

    .line 803
    if-gez v0, :cond_1

    .line 808
    :goto_0
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 809
    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    return-object v0

    .line 806
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 455
    const/4 v2, 0x0

    .line 456
    const/4 v1, 0x1

    .line 457
    add-int v0, p2, p4

    aget-object v0, p1, v0

    invoke-interface {p5, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 459
    sub-int v0, p3, p4

    .line 460
    :goto_0
    if-ge v1, v0, :cond_0

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 462
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 463
    if-gtz v2, :cond_8

    move v2, v1

    move v1, v0

    .line 464
    goto :goto_0

    .line 466
    :cond_0
    if-le v1, v0, :cond_7

    .line 469
    :goto_1
    add-int v1, v2, p4

    .line 470
    add-int/2addr v0, p4

    .line 493
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 494
    :goto_3
    if-ge v2, v0, :cond_4

    .line 495
    sub-int v1, v0, v2

    ushr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    .line 497
    add-int v3, p2, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_3

    .line 498
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_3

    .line 473
    :cond_1
    add-int/lit8 v0, p4, 0x1

    .line 474
    :goto_4
    if-ge v1, v0, :cond_2

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_2

    .line 476
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 477
    if-gtz v2, :cond_6

    move v2, v1

    move v1, v0

    .line 478
    goto :goto_4

    .line 480
    :cond_2
    if-le v1, v0, :cond_5

    .line 484
    :goto_5
    sub-int v1, p4, v0

    .line 485
    sub-int v0, p4, v2

    goto :goto_2

    :cond_3
    move v0, v1

    .line 501
    goto :goto_3

    .line 503
    :cond_4
    return v0

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 520
    const/4 v2, 0x1

    .line 521
    const/4 v1, 0x0

    .line 522
    add-int v0, p2, p4

    aget-object v0, p1, v0

    invoke-interface {p5, p0, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 524
    add-int/lit8 v0, p4, 0x1

    move v4, v1

    move v1, v2

    move v2, v4

    .line 525
    :goto_0
    if-ge v1, v0, :cond_0

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 527
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 528
    if-gtz v2, :cond_8

    move v2, v1

    move v1, v0

    .line 529
    goto :goto_0

    .line 531
    :cond_0
    if-le v1, v0, :cond_7

    .line 535
    :goto_1
    sub-int v0, p4, v0

    .line 536
    sub-int v1, p4, v2

    .line 558
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 559
    :goto_3
    if-ge v0, v1, :cond_4

    .line 560
    sub-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 562
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3

    move v1, v2

    .line 563
    goto :goto_3

    .line 539
    :cond_1
    sub-int v0, p3, p4

    move v4, v1

    move v1, v2

    move v2, v4

    .line 540
    :goto_4
    if-ge v1, v0, :cond_2

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 542
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 543
    if-gtz v2, :cond_6

    move v2, v1

    move v1, v0

    .line 544
    goto :goto_4

    .line 546
    :cond_2
    if-le v1, v0, :cond_5

    .line 549
    :goto_5
    add-int v1, v2, p4

    .line 550
    add-int/2addr v0, p4

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    .line 565
    :cond_3
    add-int/lit8 v0, v2, 0x1

    .line 566
    goto :goto_3

    .line 568
    :cond_4
    return v1

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    move v4, v1

    move v1, v2

    move v2, v4

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v4, v1

    move v1, v2

    move v2, v4

    goto :goto_0
.end method

.method private mergeAt(I)V
    .locals 10
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    aget v2, v0, p1

    .line 398
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v3, v0, p1

    .line 399
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    aget v6, v0, v1

    .line 400
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    aget v7, v0, v1

    .line 408
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int v1, v3, v7

    aput v1, v0, p1

    .line 409
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x2

    aget v4, v4, v5

    aput v4, v0, v1

    .line 413
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    .line 421
    add-int v8, v2, v0

    .line 422
    sub-int v9, v3, v0

    .line 423
    if-nez v9, :cond_2

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    add-int v1, v8, v9

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v4, v7, -0x1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    move v2, v6

    move v3, v7

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    .line 431
    if-eqz v0, :cond_1

    .line 434
    if-gt v9, v0, :cond_3

    .line 435
    invoke-direct {p0, v8, v9, v6, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeLo(IIII)V

    goto :goto_0

    .line 437
    :cond_3
    invoke-direct {p0, v8, v9, v6, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeHi(IIII)V

    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    .prologue
    .line 366
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 367
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    .line 368
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    .line 369
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 370
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    .line 372
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 377
    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    .prologue
    .line 381
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 382
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    .line 383
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 384
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    goto :goto_0

    .line 386
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 691
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    .line 692
    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v3, v0, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    .line 695
    add-int/lit8 v5, p4, -0x1

    .line 696
    add-int v4, p3, p4

    add-int/lit8 v7, v4, -0x1

    .line 699
    add-int/lit8 v4, v7, -0x1

    add-int/lit8 v6, v2, -0x1

    aget-object v2, v3, v2

    aput-object v2, v3, v7

    .line 700
    add-int/lit8 v8, p2, -0x1

    if-nez v8, :cond_0

    .line 701
    const/4 v2, 0x0

    sub-int/2addr v4, v5

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    :goto_0
    return-void

    .line 704
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 705
    sub-int v2, v4, v8

    .line 706
    sub-int v4, v6, v8

    .line 707
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-static {v3, v4, v3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    aget-object v4, v9, v5

    aput-object v4, v3, v2

    goto :goto_0

    .line 712
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 713
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 716
    :goto_1
    const/4 v11, 0x0

    .line 717
    const/4 v10, 0x0

    move/from16 v17, v10

    move v10, v6

    move v6, v4

    move/from16 v4, v17

    move/from16 v18, v5

    move v5, v11

    move v11, v8

    move/from16 v8, v18

    .line 724
    :cond_2
    aget-object v12, v9, v8

    aget-object v13, v3, v10

    invoke-interface {v7, v12, v13}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_4

    .line 725
    add-int/lit8 v4, v6, -0x1

    add-int/lit8 v12, v10, -0x1

    aget-object v10, v3, v10

    aput-object v10, v3, v6

    .line 726
    add-int/lit8 v6, v5, 0x1

    .line 727
    const/4 v5, 0x0

    .line 728
    add-int/lit8 v15, v11, -0x1

    if-nez v15, :cond_12

    move v5, v8

    move v10, v12

    .line 770
    :goto_2
    if-gtz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 772
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_9

    .line 774
    sub-int v2, v4, v15

    .line 775
    sub-int v4, v10, v15

    .line 776
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-static {v3, v4, v3, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    aget-object v4, v9, v5

    aput-object v4, v3, v2

    goto :goto_0

    .line 730
    :cond_4
    add-int/lit8 v5, v6, -0x1

    add-int/lit8 v12, v8, -0x1

    aget-object v8, v9, v8

    aput-object v8, v3, v6

    .line 731
    add-int/lit8 v4, v4, 0x1

    .line 732
    const/4 v6, 0x0

    .line 733
    add-int/lit8 p4, p4, -0x1

    const/4 v8, 0x1

    move/from16 v0, p4

    if-eq v0, v8, :cond_11

    move v8, v12

    move/from16 v17, v5

    move v5, v6

    move/from16 v6, v17

    .line 735
    :goto_3
    or-int v12, v5, v4

    if-lt v12, v2, :cond_2

    move v14, v2

    move v5, v11

    move v11, v10

    move v10, v8

    move v8, v6

    .line 743
    :goto_4
    aget-object v2, v9, v10

    add-int/lit8 v6, v5, -0x1

    move/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v16, v5, v2

    .line 744
    if-eqz v16, :cond_5

    .line 745
    sub-int v8, v8, v16

    .line 746
    sub-int v11, v11, v16

    .line 747
    sub-int v5, v5, v16

    .line 748
    add-int/lit8 v2, v11, 0x1

    add-int/lit8 v4, v8, 0x1

    move/from16 v0, v16

    invoke-static {v3, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    if-eqz v5, :cond_10

    :cond_5
    move v2, v11

    move v15, v5

    .line 751
    add-int/lit8 v4, v8, -0x1

    add-int/lit8 v5, v10, -0x1

    aget-object v6, v9, v10

    aput-object v6, v3, v8

    .line 752
    add-int/lit8 v11, p4, -0x1

    const/4 v6, 0x1

    if-eq v11, v6, :cond_f

    .line 754
    aget-object v8, v3, v2

    const/4 v10, 0x0

    add-int/lit8 v12, v11, -0x1

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v6

    sub-int v12, v11, v6

    .line 755
    if-eqz v12, :cond_e

    .line 756
    sub-int/2addr v4, v12

    .line 757
    sub-int/2addr v5, v12

    .line 758
    sub-int p4, v11, v12

    .line 759
    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-static {v9, v6, v3, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    const/4 v6, 0x1

    move/from16 v0, p4

    if-le v0, v6, :cond_d

    move v8, v4

    .line 761
    :goto_5
    add-int/lit8 v4, v8, -0x1

    add-int/lit8 v6, v2, -0x1

    aget-object v2, v3, v2

    aput-object v2, v3, v8

    .line 764
    add-int/lit8 v8, v15, -0x1

    if-eqz v8, :cond_c

    .line 765
    add-int/lit8 v2, v14, -0x1

    .line 766
    const/4 v10, 0x7

    move/from16 v0, v16

    if-lt v0, v10, :cond_7

    const/4 v10, 0x1

    move v11, v10

    :goto_6
    const/4 v10, 0x7

    if-lt v12, v10, :cond_8

    const/4 v10, 0x1

    :goto_7
    or-int/2addr v10, v11

    if-nez v10, :cond_b

    .line 767
    if-gez v2, :cond_6

    const/4 v2, 0x0

    .line 768
    :cond_6
    add-int/lit8 v2, v2, 0x2

    .line 769
    goto/16 :goto_1

    .line 766
    :cond_7
    const/4 v10, 0x0

    move v11, v10

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    goto :goto_7

    .line 778
    :cond_9
    if-nez p4, :cond_a

    .line 779
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Comparison method violates its general contract!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 783
    :cond_a
    const/4 v2, 0x0

    add-int/lit8 v5, p4, -0x1

    sub-int/2addr v4, v5

    move/from16 v0, p4

    invoke-static {v9, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_b
    move v14, v2

    move v10, v5

    move v11, v6

    move v5, v8

    move v8, v4

    goto/16 :goto_4

    :cond_c
    move v2, v14

    move v10, v6

    move v15, v8

    goto/16 :goto_2

    :cond_d
    move v10, v2

    move v2, v14

    goto/16 :goto_2

    :cond_e
    move v8, v4

    move/from16 p4, v11

    goto :goto_5

    :cond_f
    move v10, v2

    move/from16 p4, v11

    move v2, v14

    goto/16 :goto_2

    :cond_10
    move v2, v14

    move v4, v8

    move v15, v5

    move v5, v10

    move v10, v11

    goto/16 :goto_2

    :cond_11
    move v4, v5

    move v15, v11

    move v5, v12

    goto/16 :goto_2

    :cond_12
    move v10, v12

    move v11, v15

    move/from16 v17, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v17

    goto/16 :goto_3
.end method

.method private mergeLo(IIII)V
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 587
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v3

    .line 588
    const/4 v2, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v9, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    const/4 v6, 0x0

    .line 595
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p3, 0x1

    aget-object v2, v9, p3

    aput-object v2, v9, p1

    .line 596
    add-int/lit8 v8, p4, -0x1

    if-nez v8, :cond_0

    .line 597
    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-static {v3, v2, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    :goto_0
    return-void

    .line 600
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 601
    invoke-static {v9, v5, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    add-int v2, v4, v8

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aput-object v3, v9, v2

    goto :goto_0

    .line 606
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 607
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 610
    :goto_1
    const/4 v11, 0x0

    .line 611
    const/4 v10, 0x0

    move/from16 v17, v10

    move v10, v6

    move v6, v4

    move/from16 v4, v17

    move/from16 v18, v5

    move v5, v11

    move v11, v8

    move/from16 v8, v18

    .line 618
    :cond_2
    aget-object v12, v9, v8

    aget-object v13, v3, v10

    invoke-interface {v7, v12, v13}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_4

    .line 619
    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v12, v8, 0x1

    aget-object v8, v9, v8

    aput-object v8, v9, v6

    .line 620
    add-int/lit8 v4, v4, 0x1

    .line 621
    const/4 v6, 0x0

    .line 622
    add-int/lit8 v11, v11, -0x1

    if-nez v11, :cond_12

    move v4, v5

    move v5, v12

    .line 664
    :goto_2
    if-gtz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 666
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    .line 668
    invoke-static {v9, v5, v9, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    add-int v2, v4, v11

    aget-object v3, v3, v10

    aput-object v3, v9, v2

    goto :goto_0

    .line 624
    :cond_4
    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v12, v10, 0x1

    aget-object v10, v3, v10

    aput-object v10, v9, v6

    .line 625
    add-int/lit8 v6, v5, 0x1

    .line 626
    const/4 v5, 0x0

    .line 627
    add-int/lit8 p2, p2, -0x1

    const/4 v10, 0x1

    move/from16 v0, p2

    if-eq v0, v10, :cond_11

    move v10, v12

    move/from16 v17, v6

    move v6, v4

    move v4, v5

    move/from16 v5, v17

    .line 629
    :goto_3
    or-int v12, v5, v4

    if-lt v12, v2, :cond_2

    move v14, v2

    move v4, v10

    move v12, v11

    move/from16 v5, p2

    move v11, v8

    move v8, v6

    .line 637
    :goto_4
    aget-object v2, v9, v11

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v16

    .line 638
    if-eqz v16, :cond_5

    .line 639
    move/from16 v0, v16

    invoke-static {v3, v4, v9, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    add-int v8, v8, v16

    .line 641
    add-int v4, v4, v16

    .line 642
    sub-int v5, v5, v16

    .line 643
    const/4 v2, 0x1

    if-le v5, v2, :cond_10

    :cond_5
    move v2, v4

    move v15, v5

    .line 644
    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v10, v11, 0x1

    aget-object v5, v9, v11

    aput-object v5, v9, v8

    .line 647
    add-int/lit8 v11, v12, -0x1

    if-eqz v11, :cond_f

    .line 649
    aget-object v8, v3, v2

    const/4 v12, 0x0

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v12

    .line 650
    if-eqz v12, :cond_e

    .line 651
    invoke-static {v9, v10, v9, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    add-int/2addr v4, v12

    .line 653
    add-int v5, v10, v12

    .line 654
    sub-int v8, v11, v12

    .line 655
    if-eqz v8, :cond_d

    move v10, v4

    .line 657
    :goto_5
    add-int/lit8 v4, v10, 0x1

    add-int/lit8 v6, v2, 0x1

    aget-object v2, v3, v2

    aput-object v2, v9, v10

    .line 658
    add-int/lit8 p2, v15, -0x1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_c

    .line 659
    add-int/lit8 v2, v14, -0x1

    .line 660
    const/4 v10, 0x7

    move/from16 v0, v16

    if-lt v0, v10, :cond_7

    const/4 v10, 0x1

    move v11, v10

    :goto_6
    const/4 v10, 0x7

    if-lt v12, v10, :cond_8

    const/4 v10, 0x1

    :goto_7
    or-int/2addr v10, v11

    if-nez v10, :cond_b

    .line 661
    if-gez v2, :cond_6

    const/4 v2, 0x0

    .line 662
    :cond_6
    add-int/lit8 v2, v2, 0x2

    .line 663
    goto/16 :goto_1

    .line 660
    :cond_7
    const/4 v10, 0x0

    move v11, v10

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    goto :goto_7

    .line 670
    :cond_9
    if-nez p2, :cond_a

    .line 671
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Comparison method violates its general contract!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 675
    :cond_a
    move/from16 v0, p2

    invoke-static {v3, v10, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_b
    move v14, v2

    move v11, v5

    move v12, v8

    move v8, v4

    move/from16 v5, p2

    move v4, v6

    goto :goto_4

    :cond_c
    move v2, v14

    move v10, v6

    move v11, v8

    goto/16 :goto_2

    :cond_d
    move v10, v2

    move v11, v8

    move/from16 p2, v15

    move v2, v14

    goto/16 :goto_2

    :cond_e
    move v5, v10

    move v8, v11

    move v10, v4

    goto :goto_5

    :cond_f
    move v5, v10

    move/from16 p2, v15

    move v10, v2

    move v2, v14

    goto/16 :goto_2

    :cond_10
    move v2, v14

    move v10, v4

    move/from16 p2, v5

    move v4, v8

    move v5, v11

    move v11, v12

    goto/16 :goto_2

    :cond_11
    move v5, v8

    move v10, v12

    goto/16 :goto_2

    :cond_12
    move v8, v12

    move/from16 v17, v5

    move v5, v6

    move/from16 v6, v17

    goto/16 :goto_3
.end method

.method private static minRunLength(I)I
    .locals 2
    .parameter

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    .line 343
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 344
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method private pushRun(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    aput p1, v0, v1

    .line 355
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    aput p2, v0, v1

    .line 356
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 357
    return-void
.end method

.method private static rangeCheck(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 822
    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fromIndex("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 824
    :cond_1
    if-le p2, p0, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 825
    :cond_2
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    add-int/lit8 v0, p2, -0x1

    .line 319
    :goto_0
    if-ge p1, v0, :cond_0

    .line 320
    aget-object v3, p0, p1

    .line 321
    add-int/lit8 v2, p1, 0x1

    aget-object v1, p0, v0

    aput-object v1, p0, p1

    .line 322
    add-int/lit8 v1, v0, -0x1

    aput-object v3, p0, v0

    move v0, v1

    move p1, v2

    .line 323
    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 175
    if-nez p3, :cond_1

    .line 176
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/utils/TimSort;->rangeCheck(III)V

    .line 181
    sub-int v0, p2, p1

    .line 182
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 185
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 186
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v0

    .line 187
    add-int/2addr v0, p1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0

    .line 193
    :cond_2
    new-instance v4, Lcom/badlogic/gdx/utils/TimSort;

    invoke-direct {v4, p0, p3}, Lcom/badlogic/gdx/utils/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 194
    invoke-static {v0}, Lcom/badlogic/gdx/utils/TimSort;->minRunLength(I)I

    move-result v2

    .line 197
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v3

    .line 200
    if-ge v3, v2, :cond_5

    .line 201
    if-gt v0, v2, :cond_4

    move v1, v0

    .line 202
    :goto_1
    add-int v5, p1, v1

    add-int/2addr v3, p1

    invoke-static {p0, p1, v5, v3, p3}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 207
    :goto_2
    invoke-direct {v4, p1, v1}, Lcom/badlogic/gdx/utils/TimSort;->pushRun(II)V

    .line 208
    invoke-direct {v4}, Lcom/badlogic/gdx/utils/TimSort;->mergeCollapse()V

    .line 211
    add-int/2addr p1, v1

    .line 212
    sub-int/2addr v0, v1

    .line 213
    if-nez v0, :cond_3

    .line 217
    invoke-direct {v4}, Lcom/badlogic/gdx/utils/TimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 201
    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 172
    return-void
.end method


# virtual methods
.method public doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 97
    array-length v0, p1

    invoke-static {v0, p3, p4}, Lcom/badlogic/gdx/utils/TimSort;->rangeCheck(III)V

    .line 98
    sub-int v0, p4, p3

    .line 99
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 102
    :cond_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 103
    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v0

    .line 104
    add-int/2addr v0, p3

    invoke-static {p1, p3, p4, v0, p2}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0

    .line 108
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 109
    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 113
    invoke-static {v0}, Lcom/badlogic/gdx/utils/TimSort;->minRunLength(I)I

    move-result v2

    .line 116
    :cond_2
    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v3

    .line 119
    if-ge v3, v2, :cond_4

    .line 120
    if-gt v0, v2, :cond_3

    move v1, v0

    .line 121
    :goto_1
    add-int v4, p3, v1

    add-int/2addr v3, p3

    invoke-static {p1, p3, v4, v3, p2}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 126
    :goto_2
    invoke-direct {p0, p3, v1}, Lcom/badlogic/gdx/utils/TimSort;->pushRun(II)V

    .line 127
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/TimSort;->mergeCollapse()V

    .line 130
    add-int/2addr p3, v1

    .line 131
    sub-int/2addr v0, v1

    .line 132
    if-nez v0, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/TimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 120
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method
