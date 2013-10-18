.class final synthetic Lcom/nianticproject/ingress/multiphotos/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 302
    invoke-static {}, Lcom/nianticproject/ingress/shared/rpc/u;->values()[Lcom/nianticproject/ingress/shared/rpc/u;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/multiphotos/ay;->b:[I

    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/ay;->b:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/u;->b:Lcom/nianticproject/ingress/shared/rpc/u;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/u;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/ay;->b:[I

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/u;->a:Lcom/nianticproject/ingress/shared/rpc/u;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/u;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 62
    :goto_1
    invoke-static {}, Lcom/nianticproject/ingress/multiphotos/ba;->values()[Lcom/nianticproject/ingress/multiphotos/ba;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/multiphotos/ay;->a:[I

    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/ay;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/multiphotos/ba;->c:Lcom/nianticproject/ingress/multiphotos/ba;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/multiphotos/ba;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/ay;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/multiphotos/ba;->d:Lcom/nianticproject/ingress/multiphotos/ba;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/multiphotos/ba;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
