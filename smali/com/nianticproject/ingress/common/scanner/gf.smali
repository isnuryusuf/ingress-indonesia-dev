.class public final Lcom/nianticproject/ingress/common/scanner/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/j;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/a/d/u;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/a/d/u;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 60
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/gf;->a:Ljava/lang/String;

    .line 61
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/u;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/gf;->b:Lcom/google/a/d/u;

    .line 62
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/gf;->c:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/gf;->d:Ljava/lang/String;

    .line 64
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;)Lcom/nianticproject/ingress/common/scanner/j;
    .locals 5
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/gf;

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalLocation()Lcom/google/a/d/u;

    move-result-object v2

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/scanner/gf;-><init>(Ljava/lang/String;Lcom/google/a/d/u;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/gf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/gf;->b:Lcom/google/a/d/u;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/gf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/gf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 97
    instance-of v1, p1, Lcom/nianticproject/ingress/common/scanner/gf;

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/common/scanner/gf;

    .line 102
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/gf;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/scanner/gf;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/gf;->b:Lcom/google/a/d/u;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/scanner/gf;->b:Lcom/google/a/d/u;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/gf;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/scanner/gf;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/gf;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/scanner/gf;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/gf;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/gf;->b:Lcom/google/a/d/u;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/gf;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/gf;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    invoke-static {p0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "portalGuid"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/gf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "portalLocation"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/gf;->b:Lcom/google/a/d/u;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "portalTitle"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/gf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "portalAddress"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/gf;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
