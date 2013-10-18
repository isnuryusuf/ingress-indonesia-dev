.class public final Lcom/nianticproject/ingress/f/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/nianticproject/ingress/shared/rpc/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f09006a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 28
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/f/j;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_0
    const v0, 0x7f09006b

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_1
    const v0, 0x7f09006c

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
