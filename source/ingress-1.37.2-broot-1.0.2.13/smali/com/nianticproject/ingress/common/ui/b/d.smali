.class final synthetic Lcom/nianticproject/ingress/common/ui/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/b/n;->values()[Lcom/nianticproject/ingress/common/ui/b/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/d;->b:[I

    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/d;->b:[I

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/n;->a:Lcom/nianticproject/ingress/common/ui/b/n;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/b/n;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/d;->b:[I

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/n;->b:Lcom/nianticproject/ingress/common/ui/b/n;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/b/n;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    :goto_1
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/b/e;->values()[Lcom/nianticproject/ingress/common/ui/b/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/d;->a:[I

    :try_start_2
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/d;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/e;->c:Lcom/nianticproject/ingress/common/ui/b/e;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/b/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/d;->a:[I

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/e;->b:Lcom/nianticproject/ingress/common/ui/b/e;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/b/e;->ordinal()I

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
