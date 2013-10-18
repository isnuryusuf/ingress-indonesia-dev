.class public final Lcom/nianticproject/ingress/common/inventory/ui/e;
.super Lcom/nianticproject/ingress/common/inventory/ui/o;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

.field private final b:Lcom/nianticproject/ingress/common/inventory/ui/g;

.field private final c:Lcom/nianticproject/ingress/common/inventory/ui/d;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/g;Lcom/nianticproject/ingress/common/inventory/ui/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/inventory/ui/o;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/p;Lcom/nianticproject/ingress/common/inventory/ui/i;)V

    .line 25
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/e;->b:Lcom/nianticproject/ingress/common/inventory/ui/g;

    .line 26
    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/ui/e;->c:Lcom/nianticproject/ingress/common/inventory/ui/d;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/ui/e;)Lcom/nianticproject/ingress/common/inventory/ui/g;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/e;->b:Lcom/nianticproject/ingress/common/inventory/ui/g;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/inventory/ui/e;)Lcom/nianticproject/ingress/common/inventory/ui/d;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/e;->c:Lcom/nianticproject/ingress/common/inventory/ui/d;

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    const-string/jumbo v2, "USE"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v0, "primary-action"

    const-class v5, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-virtual {p2, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/e;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/e;->b:Lcom/nianticproject/ingress/common/inventory/ui/g;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/e;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/g;->a(Lcom/nianticproject/ingress/common/ui/widget/c;)V

    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/e;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    new-instance v1, Lcom/nianticproject/ingress/common/inventory/ui/f;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/inventory/ui/f;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/e;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/e;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3e947ae1

    invoke-static {v1}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    const v2, 0x3df5c28f

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;Lcom/a/a/e;)Lcom/a/a/c;

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/inventory/ui/o;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 46
    return-void
.end method
