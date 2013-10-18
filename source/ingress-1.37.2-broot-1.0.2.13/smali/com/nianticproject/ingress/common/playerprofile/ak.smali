.class public Lcom/nianticproject/ingress/common/playerprofile/ak;
.super Lcom/nianticproject/ingress/common/playerprofile/ao;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/common/inventory/i;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/ao;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/common/inventory/i;Z)V

    .line 44
    return-void
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/playerprofile/ak;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->a(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ak;

    .line 28
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/ak;->n()V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "MyProfileActivity"

    return-object v0
.end method

.method protected final k()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method
