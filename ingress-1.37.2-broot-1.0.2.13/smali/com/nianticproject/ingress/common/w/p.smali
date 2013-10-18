.class public final Lcom/nianticproject/ingress/common/w/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/w/p;->a:[[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x7dt
        0x4ct
        0xc8t
        0x7at
        0xdat
        0xet
        0x83t
        0xeet
        0x8ct
        0x5ct
        0x6bt
        0xfat
        0x15t
        0x4ft
        0x34t
        0x35t
    .end array-data

    :array_1
    .array-data 0x1
        0x28t
        0xbat
        0x21t
        0x2et
        0xbct
        0x0t
        0x2t
        0x97t
        0x6bt
        0xbbt
        0xd1t
        0x77t
        0xd2t
        0xf8t
        0x94t
        0x93t
    .end array-data

    :array_2
    .array-data 0x1
        0xf9t
        0x20t
        0x2at
        0x2et
        0xet
        0xeft
        0xd6t
        0xa6t
        0xcbt
        0x5et
        0xa5t
        0xc8t
        0xdft
        0x15t
        0xc8t
        0x16t
    .end array-data

    :array_3
    .array-data 0x1
        0xebt
        0xe2t
        0xb4t
        0x75t
        0x84t
        0x57t
        0x2ct
        0xeet
        0x7t
        0xa7t
        0xet
        0x2at
        0xf8t
        0x88t
        0x61t
        0xa8t
    .end array-data

    :array_4
    .array-data 0x1
        0xb1t
        0x31t
        0xbdt
        0x3ft
        0xa7t
        0x6t
        0x77t
        0xb9t
        0xf2t
        0x9bt
        0x48t
        0xact
        0xcdt
        0x0t
        0x45t
        0x1et
    .end array-data

    :array_5
    .array-data 0x1
        0x45t
        0xd3t
        0x16t
        0xcat
        0x46t
        0xc1t
        0xc1t
        0x89t
        0xb7t
        0x9ft
        0xc1t
        0x1t
        0xd8t
        0x1at
        0xb1t
        0xbct
    .end array-data

    :array_6
    .array-data 0x1
        0x55t
        0xbbt
        0xdet
        0xe6t
        0x53t
        0xbet
        0x72t
        0xa7t
        0x3t
        0xat
        0xc4t
        0x80t
        0xf8t
        0x5ct
        0x29t
        0x75t
    .end array-data

    :array_7
    .array-data 0x1
        0x4bt
        0xe4t
        0x43t
        0x42t
        0x93t
        0xd6t
        0xdft
        0xe8t
        0xadt
        0x9at
        0x3ct
        0xfdt
        0x97t
        0xaat
        0xcbt
        0x78t
    .end array-data

    :array_8
    .array-data 0x1
        0xe0t
        0x1ct
        0x1dt
        0xa1t
        0xc2t
        0x83t
        0xe3t
        0xf8t
        0xd0t
        0xc3t
        0x47t
        0xc2t
        0xc9t
        0x75t
        0x9at
        0x86t
    .end array-data

    :array_9
    .array-data 0x1
        0x6t
        0x6dt
        0xa5t
        0x20t
        0x16t
        0x60t
        0xb7t
        0xa7t
        0x56t
        0xf3t
        0x90t
        0xb6t
        0x84t
        0x28t
        0x87t
        0xcbt
    .end array-data
.end method

.method public static a(Ljava/util/Collection;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-static {}, Lcom/google/a/e/ab;->a()Lcom/google/a/e/z;

    move-result-object v2

    .line 112
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    invoke-interface {v2}, Lcom/google/a/e/z;->a()Lcom/google/a/e/aa;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Ingress"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/google/a/a/w;->c:Ljava/nio/charset/Charset;

    invoke-interface {v4, v0, v5}, Lcom/google/a/e/aa;->a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/a/e/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/e/aa;->a()Lcom/google/a/e/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/e/u;->b()[B

    move-result-object v4

    .line 117
    sget-object v5, Lcom/nianticproject/ingress/common/w/p;->a:[[B

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 118
    invoke-static {v7, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 119
    const/4 v0, 0x1

    .line 124
    :goto_1
    return v0

    .line 117
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 124
    goto :goto_1
.end method
