.class public final Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;
.super Lcom/nianticproject/ingress/common/ui/hud/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Lcom/nianticproject/ingress/common/ui/hud/i;

.field private final c:Lcom/nianticproject/ingress/common/ui/hud/g;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/hud/c;-><init>()V

    .line 49
    iput-boolean v7, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a:Z

    .line 76
    new-instance v0, Lcom/nianticproject/ingress/common/ui/hud/i;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/ui/hud/i;-><init>(Lcom/nianticproject/ingress/common/j/h;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->b:Lcom/nianticproject/ingress/common/ui/hud/i;

    .line 77
    new-instance v0, Lcom/nianticproject/ingress/common/ui/hud/g;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/ui/hud/g;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->c:Lcom/nianticproject/ingress/common/ui/hud/g;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/hud/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->b:Lcom/nianticproject/ingress/common/ui/hud/i;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->c:Lcom/nianticproject/ingress/common/ui/hud/g;

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a([Lcom/nianticproject/ingress/common/ui/hud/b;)V

    .line 79
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/hud/c;->a()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a:Z

    .line 85
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->c:Lcom/nianticproject/ingress/common/ui/hud/g;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/hud/g;->a(Z)V

    .line 94
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/hud/c;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
