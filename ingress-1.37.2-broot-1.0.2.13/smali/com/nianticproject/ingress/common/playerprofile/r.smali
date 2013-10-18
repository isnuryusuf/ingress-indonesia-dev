.class final synthetic Lcom/nianticproject/ingress/common/playerprofile/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 402
    invoke-static {}, Lcom/nianticproject/ingress/shared/playerprofile/a;->values()[Lcom/nianticproject/ingress/shared/playerprofile/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->b:[I

    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->b:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/playerprofile/a;->b:Lcom/nianticproject/ingress/shared/playerprofile/a;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/playerprofile/a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->b:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/playerprofile/a;->a:Lcom/nianticproject/ingress/shared/playerprofile/a;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/playerprofile/a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    .line 120
    :goto_1
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/t;->values()[Lcom/nianticproject/ingress/common/playerprofile/t;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->a:[I

    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->c:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/t;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->a:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/t;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->d:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/t;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->b:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/t;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/r;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/t;->e:Lcom/nianticproject/ingress/common/playerprofile/t;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/t;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
