.class public final Lcom/nianticproject/ingress/common/inventory/ui/b;
.super Lcom/nianticproject/ingress/common/inventory/ui/o;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

.field private final b:Lcom/nianticproject/ingress/common/inventory/ui/ba;

.field private final c:Lcom/nianticproject/ingress/common/inventory/ui/bf;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/ba;Lcom/nianticproject/ingress/common/inventory/ui/bf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/inventory/ui/o;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/p;Lcom/nianticproject/ingress/common/inventory/ui/i;)V

    .line 27
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->b:Lcom/nianticproject/ingress/common/inventory/ui/ba;

    .line 28
    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->c:Lcom/nianticproject/ingress/common/inventory/ui/bf;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/ui/b;)Lcom/nianticproject/ingress/common/inventory/ui/ba;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->b:Lcom/nianticproject/ingress/common/inventory/ui/ba;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/inventory/ui/b;)Lcom/nianticproject/ingress/common/inventory/ui/bf;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->c:Lcom/nianticproject/ingress/common/inventory/ui/bf;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->b:Lcom/nianticproject/ingress/common/inventory/ui/ba;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/ba;->a(Lcom/nianticproject/ingress/common/ui/widget/c;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/inventory/ui/o;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 36
    const-string/jumbo v0, "small"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 38
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[range] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->b:Lcom/nianticproject/ingress/common/inventory/ui/ba;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/inventory/ui/ba;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 39
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 40
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 41
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/inventory/ui/b;->c()V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->b:Lcom/nianticproject/ingress/common/inventory/ui/ba;

    invoke-static {}, Lcom/nianticproject/ingress/common/inventory/ui/ba;->g()Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v0, "primary-action"

    const-class v5, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-virtual {p2, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    new-instance v1, Lcom/nianticproject/ingress/common/inventory/ui/c;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/inventory/ui/c;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/b;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/b;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

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

    .line 57
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/inventory/ui/b;->c()V

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/inventory/ui/o;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 61
    return-void
.end method
