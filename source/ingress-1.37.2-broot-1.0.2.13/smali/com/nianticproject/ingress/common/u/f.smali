.class public Lcom/nianticproject/ingress/common/u/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final c:[I


# instance fields
.field private final b:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/u/f;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/u/f;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/common/u/f;->c:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/f;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const v13, 0x11111111

    const/4 v2, 0x1

    const v12, -0x77777778

    const/4 v1, 0x0

    .line 55
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 58
    const-string/jumbo v0, "coc.a"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    move v3, v1

    move v4, v1

    .line 60
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 61
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 63
    sget-object v7, Lcom/nianticproject/ingress/common/u/f;->c:[I

    aget v6, v7, v6

    .line 65
    const-string/jumbo v7, "\\."

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 66
    array-length v0, v7

    const/4 v8, 0x2

    if-ne v0, v8, :cond_4

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 67
    const/4 v0, 0x0

    aget-object v7, v7, v0

    .line 68
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0x20

    if-ne v0, v8, :cond_5

    move v0, v2

    :goto_2
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 69
    const/4 v0, 0x0

    const/16 v8, 0x8

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x10

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    long-to-int v0, v8

    .line 70
    const/16 v8, 0x8

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    long-to-int v8, v8

    .line 71
    const/16 v9, 0x10

    const/16 v10, 0x18

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    long-to-int v9, v9

    .line 72
    const/16 v10, 0x18

    const/16 v11, 0x20

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x10

    invoke-static {v7, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v7, v10

    .line 74
    if-lez v6, :cond_0

    .line 75
    and-int v10, v13, v0

    const v11, 0x22222222

    and-int/2addr v11, v8

    or-int/2addr v10, v11

    const v11, 0x44444444

    and-int/2addr v11, v9

    or-int/2addr v10, v11

    and-int v11, v12, v7

    or-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    if-le v6, v2, :cond_1

    .line 80
    const v10, 0x22222222

    and-int/2addr v10, v0

    const v11, 0x44444444

    and-int/2addr v11, v8

    or-int/2addr v10, v11

    and-int v11, v12, v9

    or-int/2addr v10, v11

    and-int v11, v13, v7

    or-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    const/4 v10, 0x2

    if-le v6, v10, :cond_2

    .line 85
    const v10, 0x44444444

    and-int/2addr v10, v0

    and-int v11, v12, v8

    or-int/2addr v10, v11

    and-int v11, v13, v9

    or-int/2addr v10, v11

    const v11, 0x22222222

    and-int/2addr v11, v7

    or-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    const/4 v10, 0x3

    if-le v6, v10, :cond_3

    .line 90
    and-int/2addr v0, v12

    and-int/2addr v8, v13

    or-int/2addr v0, v8

    const v8, 0x22222222

    and-int/2addr v8, v9

    or-int/2addr v0, v8

    const v8, 0x44444444

    and-int/2addr v7, v8

    or-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    add-int/2addr v4, v6

    .line 60
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 66
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 68
    goto/16 :goto_2

    .line 96
    :cond_6
    if-le v4, v2, :cond_7

    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/f;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    :cond_7
    move v0, v1

    .line 100
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 101
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/f;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 105
    :cond_8
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 108
    return v4

    .line 105
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/u/av;Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;ZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 127
    if-nez p1, :cond_3

    invoke-static {}, Lcom/nianticproject/ingress/common/u/av;->u()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/u/aw;->a(J)Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    move-object v1, v0

    .line 132
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->j()J

    move-result-wide v2

    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/nianticproject/ingress/knobs/e;->a(Ljava/lang/Class;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {p2}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;->b()I

    move-result v2

    .line 135
    if-eqz p3, :cond_4

    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/f;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 137
    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    xor-int/2addr v0, v2

    .line 142
    :goto_1
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/aw;->b(I)Lcom/nianticproject/ingress/common/u/aw;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/f;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    if-eqz p4, :cond_1

    .line 147
    invoke-virtual {v1, v4}, Lcom/nianticproject/ingress/common/u/aw;->a(Z)Lcom/nianticproject/ingress/common/u/aw;

    .line 150
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v1, v4}, Lcom/nianticproject/ingress/common/u/aw;->b(Z)Lcom/nianticproject/ingress/common/u/aw;

    .line 157
    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->B()Lcom/nianticproject/ingress/shared/a/a;

    move-result-object v0

    .line 158
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/aw;->c()Lcom/nianticproject/ingress/common/u/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/av;->a()[B

    move-result-object v1

    .line 161
    :try_start_0
    const-string/jumbo v2, "coc.e"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 162
    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/shared/a/a;->a([B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 164
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 167
    invoke-interface {p2}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;->a()Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    move-result-object v1

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 169
    return-void

    .line 127
    :cond_3
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->v()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
