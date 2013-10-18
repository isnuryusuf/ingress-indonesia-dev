.class final synthetic Lcom/nianticproject/ingress/curation/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 582
    invoke-static {}, Lcom/nianticproject/ingress/shared/rpc/t;->values()[Lcom/nianticproject/ingress/shared/rpc/t;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/curation/g;->e:[I

    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->e:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->f:Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/t;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_18

    :goto_0
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->e:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->c:Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/t;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_17

    :goto_1
    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->e:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->d:Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/t;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_16

    :goto_2
    :try_start_3
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->e:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->b:Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/t;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_15

    :goto_3
    :try_start_4
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->e:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->a:Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/t;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_14

    :goto_4
    :try_start_5
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->e:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->g:Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/t;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_13

    :goto_5
    :try_start_6
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->e:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/t;->e:Lcom/nianticproject/ingress/shared/rpc/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/t;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_12

    .line 597
    :goto_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/rpc/b;->values()[Lcom/nianticproject/ingress/shared/rpc/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/curation/g;->d:[I

    :try_start_7
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->d:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/b;->d:Lcom/nianticproject/ingress/shared/rpc/b;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_11

    :goto_7
    :try_start_8
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->d:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/b;->c:Lcom/nianticproject/ingress/shared/rpc/b;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_10

    :goto_8
    :try_start_9
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->d:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/b;->e:Lcom/nianticproject/ingress/shared/rpc/b;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_f

    .line 405
    :goto_9
    invoke-static {}, Lcom/nianticproject/ingress/shared/rpc/v;->values()[Lcom/nianticproject/ingress/shared/rpc/v;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/curation/g;->c:[I

    :try_start_a
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->c:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/v;->a:Lcom/nianticproject/ingress/shared/rpc/v;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/v;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_e

    :goto_a
    :try_start_b
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->c:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/v;->b:Lcom/nianticproject/ingress/shared/rpc/v;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/v;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_d

    :goto_b
    :try_start_c
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->c:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/v;->c:Lcom/nianticproject/ingress/shared/rpc/v;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/v;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->c:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/v;->d:Lcom/nianticproject/ingress/shared/rpc/v;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/v;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_b

    :goto_d
    :try_start_e
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->c:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/v;->e:Lcom/nianticproject/ingress/shared/rpc/v;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/v;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_a

    :goto_e
    :try_start_f
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->c:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/v;->f:Lcom/nianticproject/ingress/shared/rpc/v;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/v;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_9

    .line 367
    :goto_f
    invoke-static {}, Lcom/nianticproject/ingress/shared/k;->values()[Lcom/nianticproject/ingress/shared/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/curation/g;->b:[I

    :try_start_10
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->b:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/k;->a:Lcom/nianticproject/ingress/shared/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/k;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_8

    :goto_10
    :try_start_11
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->b:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/k;->b:Lcom/nianticproject/ingress/shared/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/k;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_7

    :goto_11
    :try_start_12
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->b:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/k;->c:Lcom/nianticproject/ingress/shared/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/k;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_6

    .line 103
    :goto_12
    invoke-static {}, Lcom/nianticproject/ingress/shared/y;->values()[Lcom/nianticproject/ingress/shared/y;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/curation/g;->a:[I

    :try_start_13
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->e:Lcom/nianticproject/ingress/shared/y;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_5

    :goto_13
    :try_start_14
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->a:Lcom/nianticproject/ingress/shared/y;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_4

    :goto_14
    :try_start_15
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->f:Lcom/nianticproject/ingress/shared/y;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_3

    :goto_15
    :try_start_16
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->d:Lcom/nianticproject/ingress/shared/y;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_2

    :goto_16
    :try_start_17
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->c:Lcom/nianticproject/ingress/shared/y;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1

    :goto_17
    :try_start_18
    sget-object v0, Lcom/nianticproject/ingress/curation/g;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/y;->b:Lcom/nianticproject/ingress/shared/y;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/y;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_0

    :goto_18
    return-void

    :catch_0
    move-exception v0

    goto :goto_18

    :catch_1
    move-exception v0

    goto :goto_17

    :catch_2
    move-exception v0

    goto :goto_16

    :catch_3
    move-exception v0

    goto :goto_15

    :catch_4
    move-exception v0

    goto :goto_14

    :catch_5
    move-exception v0

    goto :goto_13

    :catch_6
    move-exception v0

    goto :goto_12

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    goto :goto_10

    :catch_9
    move-exception v0

    goto/16 :goto_f

    :catch_a
    move-exception v0

    goto/16 :goto_e

    :catch_b
    move-exception v0

    goto/16 :goto_d

    :catch_c
    move-exception v0

    goto/16 :goto_c

    :catch_d
    move-exception v0

    goto/16 :goto_b

    :catch_e
    move-exception v0

    goto/16 :goto_a

    :catch_f
    move-exception v0

    goto/16 :goto_9

    :catch_10
    move-exception v0

    goto/16 :goto_8

    :catch_11
    move-exception v0

    goto/16 :goto_7

    :catch_12
    move-exception v0

    goto/16 :goto_6

    :catch_13
    move-exception v0

    goto/16 :goto_5

    :catch_14
    move-exception v0

    goto/16 :goto_4

    :catch_15
    move-exception v0

    goto/16 :goto_3

    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_1

    :catch_18
    move-exception v0

    goto/16 :goto_0
.end method
