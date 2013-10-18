.class public final Lcom/nianticproject/ingress/common/q/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/q/a/y;

.field private final b:Lcom/nianticproject/ingress/common/q/a/i;

.field private final c:Lcom/nianticproject/ingress/common/q/a/h;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/q/a/y;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/nianticproject/ingress/common/q/a/i;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/q/a/i;-><init>(Lcom/nianticproject/ingress/common/q/a/g;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    .line 123
    new-instance v0, Lcom/nianticproject/ingress/common/q/a/h;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/q/a/h;-><init>(Lcom/nianticproject/ingress/common/q/a/g;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->c:Lcom/nianticproject/ingress/common/q/a/h;

    .line 132
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/a/g;->a:Lcom/nianticproject/ingress/common/q/a/y;

    .line 133
    return-void
.end method

.method private static a(Ljava/io/DataInput;I)Ljava/util/ArrayList;
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/a/t;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 754
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 755
    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, p1, :cond_0

    .line 756
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v12

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/q/a/g;->f(Ljava/io/DataInput;I)[I

    move-result-object v0

    move-object v9, v0

    :goto_1
    and-int/lit8 v0, v12, 0x2

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/q/a/g;->b(Ljava/io/DataInput;I)Ljava/util/ArrayList;

    move-result-object v0

    move-object v8, v0

    :goto_2
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v4

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v5

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    new-instance v0, Lcom/nianticproject/ingress/common/q/a/w;

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/q/a/w;-><init>(IIIIII)V

    move-object v3, v0

    :goto_3
    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/g;->b(Ljava/io/DataInput;)Lcom/nianticproject/ingress/common/q/a/u;

    move-result-object v1

    new-instance v4, Lcom/nianticproject/ingress/common/q/a/v;

    invoke-direct {v4, v0, v1}, Lcom/nianticproject/ingress/common/q/a/v;-><init>(ILcom/nianticproject/ingress/common/q/a/u;)V

    :goto_4
    and-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/g;->b(Ljava/io/DataInput;)Lcom/nianticproject/ingress/common/q/a/u;

    move-result-object v5

    :goto_5
    new-instance v0, Lcom/nianticproject/ingress/common/q/a/t;

    move-object v1, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/q/a/t;-><init>([ILjava/util/ArrayList;Lcom/nianticproject/ingress/common/q/a/w;Lcom/nianticproject/ingress/common/q/a/v;Lcom/nianticproject/ingress/common/q/a/u;)V

    .line 757
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 761
    :cond_0
    return-object v11

    :cond_1
    move-object v5, v7

    goto :goto_5

    :cond_2
    move-object v4, v7

    goto :goto_4

    :cond_3
    move-object v3, v7

    goto :goto_3

    :cond_4
    move-object v8, v7

    goto :goto_2

    :cond_5
    move-object v9, v7

    goto :goto_1
.end method

.method private static a(Ljava/io/DataInput;)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 590
    new-instance v0, Lcom/nianticproject/ingress/common/q/a/n;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/q/a/n;-><init>()V

    .line 593
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v8

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    new-instance v0, Lcom/nianticproject/ingress/common/q/a/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/q/a/a;-><init>()V

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/q/a/a;->a(SS)V

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/q/a/a;->a(I)V

    :cond_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v3

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v4

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/q/a/a;->a(SSIII)V

    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 595
    :cond_2
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    .line 600
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    .line 602
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/g;->c(Ljava/io/DataInput;)Lcom/nianticproject/ingress/common/q/a/j;

    .line 603
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/g;->c(Ljava/io/DataInput;)Lcom/nianticproject/ingress/common/q/a/j;

    .line 605
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 606
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v2

    move v0, v6

    .line 607
    :goto_1
    if-ge v0, v2, :cond_3

    .line 608
    new-instance v3, Lcom/nianticproject/ingress/common/q/a/c;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/nianticproject/ingress/common/q/a/c;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 610
    :cond_3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 613
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 614
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 616
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 617
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/q/a/g;->d(Ljava/io/DataInput;I)Lcom/nianticproject/ingress/common/q/a/f;

    .line 620
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    .line 625
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 627
    :cond_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    .line 628
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 630
    :cond_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 631
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 634
    :cond_6
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/q/a/g;->g(Ljava/io/DataInput;I)[I

    .line 636
    return-void
.end method

.method private static a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/i;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1044
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v2

    move v0, v1

    .line 1045
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1046
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    .line 1047
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v4

    .line 1048
    const/4 v5, 0x2

    new-array v5, v5, [S

    aput-short v3, v5, v1

    const/4 v3, 0x1

    aput-short v4, v5, v3

    invoke-virtual {p1, v5}, Lcom/nianticproject/ingress/common/q/a/i;->a([S)V

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1050
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/i;Lcom/nianticproject/ingress/common/q/a/h;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1063
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v2

    move v0, v1

    .line 1064
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1065
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    .line 1066
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v4

    .line 1067
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v5

    .line 1068
    const/4 v6, 0x3

    new-array v6, v6, [S

    aput-short v3, v6, v1

    aput-short v4, v6, v10

    const/4 v3, 0x2

    aput-short v5, v6, v3

    invoke-virtual {p1, v6}, Lcom/nianticproject/ingress/common/q/a/i;->a([S)V

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1070
    :cond_0
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v3

    move v2, v1

    .line 1071
    :goto_1
    if-ge v2, v3, :cond_4

    .line 1072
    new-array v4, v10, [I

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    aput v0, v4, v1

    iget v0, p2, Lcom/nianticproject/ingress/common/q/a/h;->a:I

    array-length v5, v4

    add-int/2addr v5, v0

    iget-object v0, p2, Lcom/nianticproject/ingress/common/q/a/h;->b:[I

    array-length v0, v0

    :goto_2
    if-le v5, v0, :cond_1

    shr-int/lit8 v6, v0, 0x1

    add-int/2addr v0, v6

    goto :goto_2

    :cond_1
    iget-object v5, p2, Lcom/nianticproject/ingress/common/q/a/h;->b:[I

    array-length v5, v5

    if-eq v0, v5, :cond_2

    new-array v0, v0, [I

    iget-object v5, p2, Lcom/nianticproject/ingress/common/q/a/h;->b:[I

    iget-object v6, p2, Lcom/nianticproject/ingress/common/q/a/h;->b:[I

    array-length v6, v6

    invoke-static {v5, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p2, Lcom/nianticproject/ingress/common/q/a/h;->b:[I

    :cond_2
    array-length v5, v4

    move v0, v1

    :goto_3
    if-ge v0, v5, :cond_3

    aget v6, v4, v0

    iget-object v7, p2, Lcom/nianticproject/ingress/common/q/a/h;->b:[I

    iget v8, p2, Lcom/nianticproject/ingress/common/q/a/h;->a:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p2, Lcom/nianticproject/ingress/common/q/a/h;->a:I

    aput v6, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1071
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1074
    :cond_4
    return-void
.end method

.method private a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/x;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v2

    move v1, v0

    .line 272
    :goto_0
    if-ge v1, v2, :cond_0

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/q/a/g;->b(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/x;)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 277
    :goto_1
    if-ge v0, v1, :cond_3

    .line 278
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 279
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/q/a/g;->b(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/x;)V

    .line 281
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 282
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    .line 286
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 285
    :cond_2
    invoke-static {p1, v2}, Lcom/nianticproject/ingress/common/q/a/g;->d(Ljava/io/DataInput;I)Lcom/nianticproject/ingress/common/q/a/f;

    goto :goto_2

    .line 291
    :cond_3
    return-void
.end method

.method private static b(Ljava/io/DataInput;)Lcom/nianticproject/ingress/common/q/a/u;
    .locals 6
    .parameter

    .prologue
    .line 826
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 827
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 828
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 829
    new-array v4, v3, [S

    .line 830
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 831
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v5

    aput-short v5, v4, v0

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 833
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 834
    new-instance v3, Lcom/nianticproject/ingress/common/q/a/u;

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/nianticproject/ingress/common/q/a/u;-><init>(II[SI)V

    return-object v3
.end method

.method private static b(Ljava/io/DataInput;I)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/a/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 809
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 810
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/g;->b(Ljava/io/DataInput;)Lcom/nianticproject/ingress/common/q/a/u;

    move-result-object v2

    .line 811
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_0
    return-object v1
.end method

.method private b(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/x;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 302
    packed-switch v1, :pswitch_data_0

    .line 334
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown feature type detected in VectorTile"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :pswitch_1
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :pswitch_2
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/q/a/x;->a()Lcom/nianticproject/ingress/common/q/a/q;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iput v0, v2, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/i;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget v0, v0, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    invoke-interface {v1, v0, v2}, Lcom/nianticproject/ingress/common/q/a/q;->a(I[S)V

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/q/a/q;->a(I)V

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->c(Ljava/io/DataInput;I)Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->d(Ljava/io/DataInput;I)Lcom/nianticproject/ingress/common/q/a/f;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->g(Ljava/io/DataInput;I)[I

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/q/a/q;->a()V

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 310
    :pswitch_3
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/q/a/x;->b()Lcom/nianticproject/ingress/common/q/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iput v0, v2, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/i;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget v0, v0, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    shr-int/lit8 v0, v0, 0x1

    rem-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "malformed triangle list in area, numVertices ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") not a multiple of 3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    div-int/lit8 v2, v0, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    invoke-interface {v1, v0, v3}, Lcom/nianticproject/ingress/common/q/a/d;->a(I[S)V

    invoke-static {p1, v2}, Lcom/nianticproject/ingress/common/q/a/g;->h(Ljava/io/DataInput;I)[B

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/q/a/d;->a(I)V

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->d(Ljava/io/DataInput;I)Lcom/nianticproject/ingress/common/q/a/f;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->g(Ljava/io/DataInput;I)[I

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/q/a/d;->a()V

    goto :goto_1

    .line 313
    :pswitch_4
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/q/a/x;->c()Lcom/nianticproject/ingress/common/q/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iput v0, v2, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    invoke-static {p1, v2}, Lcom/nianticproject/ingress/common/q/a/g;->a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/i;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget v2, v2, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    shr-int/lit8 v2, v2, 0x1

    rem-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Malformed footprint triangle list in building. Invalid numFootprintVertices ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    div-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    invoke-interface {v1, v2, v4}, Lcom/nianticproject/ingress/common/q/a/e;->a(I[S)V

    iget-object v4, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iput v0, v4, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    iget-object v4, p0, Lcom/nianticproject/ingress/common/q/a/g;->c:Lcom/nianticproject/ingress/common/q/a/h;

    iput v0, v4, Lcom/nianticproject/ingress/common/q/a/h;->a:I

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/q/a/g;->c:Lcom/nianticproject/ingress/common/q/a/h;

    invoke-static {p1, v0, v4}, Lcom/nianticproject/ingress/common/q/a/g;->a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/i;Lcom/nianticproject/ingress/common/q/a/h;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget v0, v0, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "malformed building triangle list in building."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget v0, v0, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    div-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_4

    if-lez v2, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "malformed building has both 2D and 3D geometry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p1, v3}, Lcom/nianticproject/ingress/common/q/a/g;->h(Ljava/io/DataInput;I)[B

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/q/a/e;->a(I)V

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->d(Ljava/io/DataInput;I)Lcom/nianticproject/ingress/common/q/a/f;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->g(Ljava/io/DataInput;I)[I

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/q/a/e;->a()V

    goto/16 :goto_1

    .line 316
    :pswitch_5
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/q/a/x;->d()Lcom/nianticproject/ingress/common/q/a/m;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iput v0, v2, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/i;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget v0, v0, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    invoke-interface {v1, v0, v2}, Lcom/nianticproject/ingress/common/q/a/m;->a(I[S)V

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->d(Ljava/io/DataInput;I)Lcom/nianticproject/ingress/common/q/a/f;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->g(Ljava/io/DataInput;I)[I

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/q/a/m;->a()V

    goto/16 :goto_1

    .line 319
    :pswitch_6
    new-instance v1, Lcom/nianticproject/ingress/common/q/a/o;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/q/a/o;-><init>()V

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    new-array v2, v1, [B

    invoke-interface {p1, v2, v0, v1}, Ljava/io/DataInput;->readFully([BII)V

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->g(Ljava/io/DataInput;I)[I

    goto/16 :goto_1

    .line 322
    :pswitch_7
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/g;->a(Ljava/io/DataInput;)V

    goto/16 :goto_1

    .line 325
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/q/a/g;->c(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/x;)V

    goto/16 :goto_1

    .line 328
    :pswitch_9
    new-instance v1, Lcom/nianticproject/ingress/common/q/a/p;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/q/a/p;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iput v0, v1, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/i;)V

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    sget-object v0, Lcom/nianticproject/ingress/common/q/a/s;->a:Lcom/nianticproject/ingress/common/q/a/s;

    :goto_2
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->g(Ljava/io/DataInput;I)[I

    goto/16 :goto_1

    :pswitch_a
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/s;->b:Lcom/nianticproject/ingress/common/q/a/s;

    goto :goto_2

    :pswitch_b
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/s;->c:Lcom/nianticproject/ingress/common/q/a/s;

    goto :goto_2

    :pswitch_c
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/s;->d:Lcom/nianticproject/ingress/common/q/a/s;

    goto :goto_2

    :pswitch_d
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/s;->e:Lcom/nianticproject/ingress/common/q/a/s;

    goto :goto_2

    .line 331
    :pswitch_e
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/q/a/g;->c(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/x;)V

    goto/16 :goto_1

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_e
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static b(Lcom/nianticproject/ingress/common/q/c;[B)[B
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 202
    new-instance v0, Lcom/nianticproject/ingress/common/q/b/b;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/q/b/b;-><init>([B)V

    .line 203
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/b;->readInt()I

    move-result v1

    const v2, 0x44524154

    if-eq v1, v2, :cond_0

    .line 204
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "corrupted tile data, bad magic."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/b;->readUnsignedShort()I

    move-result v3

    .line 207
    const/16 v1, 0x9

    if-eq v3, v1, :cond_1

    .line 208
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected tile format, wanted v3, got v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/b;->readInt()I

    move-result v4

    .line 211
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/b/b;->readLong()J

    move-result-wide v5

    .line 213
    array-length v0, p1

    add-int/lit8 v0, v0, -0x12

    new-array v7, v0, [B

    .line 214
    const/16 v0, 0x12

    array-length v1, v7

    invoke-static {p1, v0, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    array-length v8, v7

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/q/c;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/q/c;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/q/c;->a()I

    move-result v2

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/common/q/a/z;->a(IIIIIJ)[B

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/q/a/z;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/q/a/z;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/q/a/z;->a([B)V

    invoke-virtual {v1, v7, v9, v8}, Lcom/nianticproject/ingress/common/q/a/z;->a([BII)V

    .line 220
    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 222
    const/4 v0, 0x0

    :try_start_0
    array-length v1, v7

    invoke-virtual {v3, v7, v0, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 223
    array-length v0, v7

    mul-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    .line 224
    invoke-virtual {v3, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 225
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-lez v2, :cond_2

    .line 226
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 227
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {v3, v2, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v0, v1

    move-object v1, v2

    .line 230
    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 237
    return-object v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "could not expand tile data: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    throw v0
.end method

.method private static c(Ljava/io/DataInput;)Lcom/nianticproject/ingress/common/q/a/j;
    .locals 11
    .parameter

    .prologue
    .line 898
    new-instance v9, Lcom/nianticproject/ingress/common/q/a/j;

    invoke-direct {v9}, Lcom/nianticproject/ingress/common/q/a/j;-><init>()V

    .line 899
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v10

    .line 900
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v10, :cond_5

    .line 901
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    :cond_0
    const/4 v4, 0x0

    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/4 v5, -0x1

    const/4 v6, -0x1

    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v5

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v6

    :cond_2
    const/4 v7, 0x0

    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v7, 0x4100

    div-float v7, v0, v7

    :cond_3
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    if-eq v1, v0, :cond_4

    new-instance v0, Lcom/nianticproject/ingress/common/q/a/k;

    xor-int/lit8 v1, v1, 0x8

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/q/a/k;-><init>(ILjava/lang/String;ILjava/lang/String;IIF)V

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/q/a/j;->a(Lcom/nianticproject/ingress/common/q/a/k;)V

    new-instance v0, Lcom/nianticproject/ingress/common/q/a/k;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/q/a/k;-><init>(ILjava/lang/String;ILjava/lang/String;IIF)V

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/q/a/j;->a(Lcom/nianticproject/ingress/common/q/a/k;)V

    .line 900
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 901
    :cond_4
    new-instance v0, Lcom/nianticproject/ingress/common/q/a/k;

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/q/a/k;-><init>(ILjava/lang/String;ILjava/lang/String;IIF)V

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/q/a/j;->a(Lcom/nianticproject/ingress/common/q/a/k;)V

    goto :goto_1

    .line 904
    :cond_5
    const/4 v0, 0x1

    if-le v10, v0, :cond_6

    .line 905
    new-instance v0, Lcom/nianticproject/ingress/common/q/a/c;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/q/a/c;-><init>(I)V

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/q/a/j;->a(Lcom/nianticproject/ingress/common/q/a/c;)V

    .line 908
    :cond_6
    return-object v9
.end method

.method private static c(Ljava/io/DataInput;I)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/a/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 880
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 882
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/g;->c(Ljava/io/DataInput;)Lcom/nianticproject/ingress/common/q/a/j;

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 887
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private c(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/x;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 652
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/q/a/x;->e()Lcom/nianticproject/ingress/common/q/a/l;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    const/4 v2, 0x0

    iput v2, v1, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    .line 657
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    invoke-static {p1, v1}, Lcom/nianticproject/ingress/common/q/a/g;->a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/i;)V

    .line 658
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget v1, v1, Lcom/nianticproject/ingress/common/q/a/i;->a:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/g;->b:Lcom/nianticproject/ingress/common/q/a/i;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/q/a/i;->b:[S

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/q/a/l;->a(I[S)V

    .line 662
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    .line 663
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    .line 665
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/nianticproject/ingress/common/q/a/g;->c(Ljava/io/DataInput;I)Ljava/util/ArrayList;

    .line 667
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 672
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 674
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 675
    invoke-static {p1, v1}, Lcom/nianticproject/ingress/common/q/a/g;->d(Ljava/io/DataInput;I)Lcom/nianticproject/ingress/common/q/a/f;

    .line 678
    invoke-static {p1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/nianticproject/ingress/common/q/a/g;->g(Ljava/io/DataInput;I)[I

    .line 684
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/q/a/l;->a()V

    .line 689
    return-void
.end method

.method private static d(Ljava/io/DataInput;I)Lcom/nianticproject/ingress/common/q/a/f;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 972
    const/4 v0, 0x0

    .line 973
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 974
    new-instance v0, Lcom/nianticproject/ingress/common/q/a/f;

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/q/a/f;-><init>(JJ)V

    .line 980
    :cond_0
    :goto_0
    return-object v0

    .line 975
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 976
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long v1, v0, v2

    .line 978
    new-instance v0, Lcom/nianticproject/ingress/common/q/a/f;

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/q/a/f;-><init>(J)V

    goto :goto_0
.end method

.method private static e(Ljava/io/DataInput;I)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1090
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1095
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static f(Ljava/io/DataInput;I)[I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1110
    new-array v1, p1, [I

    .line 1111
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1112
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1113
    aput v2, v1, v0

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1117
    :cond_0
    return-object v1
.end method

.method private static g(Ljava/io/DataInput;I)[I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1132
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1134
    invoke-static {p0}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    .line 1135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1139
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static h(Ljava/io/DataInput;I)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1154
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1156
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    .line 1157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1161
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/nianticproject/ingress/common/q/c;[B)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/q/a/g;->b(Lcom/nianticproject/ingress/common/q/c;[B)[B

    move-result-object v0

    .line 148
    new-instance v1, Lcom/nianticproject/ingress/common/q/b/b;

    invoke-direct {v1, v0}, Lcom/nianticproject/ingress/common/q/b/b;-><init>([B)V

    .line 150
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/q/b/b;->readInt()I

    move-result v0

    const v2, 0x44524154

    if-eq v0, v2, :cond_0

    .line 151
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "corrupted VectorTile header, bad magic."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 154
    invoke-static {v1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 155
    invoke-static {v1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 157
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/c;->a()I

    move-result v4

    if-eq v4, v0, :cond_1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/c;->b()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/c;->c()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 158
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unexpected VectorTile returned, coodinate mismatch."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/g;->a:Lcom/nianticproject/ingress/common/q/a/y;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/q/a/y;->a()Lcom/nianticproject/ingress/common/q/a/x;

    move-result-object v0

    .line 161
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/q/b/b;->readUnsignedByte()I

    .line 163
    invoke-static {v1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/q/a/g;->e(Ljava/io/DataInput;I)Ljava/util/ArrayList;

    .line 165
    invoke-static {v1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/q/a/g;->e(Ljava/io/DataInput;I)Ljava/util/ArrayList;

    .line 171
    invoke-static {v1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/q/a/g;->a(Ljava/io/DataInput;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 177
    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/q/a/x;->a(Ljava/util/List;)V

    .line 181
    invoke-static {v1}, Lcom/nianticproject/ingress/common/q/a/aa;->a(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/q/a/g;->e(Ljava/io/DataInput;I)Ljava/util/ArrayList;

    .line 183
    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/common/q/a/g;->a(Ljava/io/DataInput;Lcom/nianticproject/ingress/common/q/a/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    monitor-exit p0

    return-void
.end method
