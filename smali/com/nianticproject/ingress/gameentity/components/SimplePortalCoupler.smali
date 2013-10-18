.class public Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;


# instance fields
.field private final address:Ljava/lang/String;

.field private final guid:Ljava/lang/String;

.field private final location:Lcom/google/a/d/u;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/a/d/u;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;->guid:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;->location:Lcom/google/a/d/u;

    .line 22
    iput-object p3, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;->title:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;->address:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getPortalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getPortalGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getPortalLocation()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;->location:Lcom/google/a/d/u;

    return-object v0
.end method

.method public getPortalTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimplePortalCoupler;->title:Ljava/lang/String;

    return-object v0
.end method
