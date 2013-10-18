.class public Lcom/nianticproject/ingress/common/inventory/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/inventory/ui/an;


# instance fields
.field private a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

.field private b:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final d:Lcom/nianticproject/ingress/common/inventory/ui/n;

.field private final e:Lcom/nianticproject/ingress/common/inventory/ui/i;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/n;Lcom/nianticproject/ingress/common/inventory/ui/i;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/n;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->d:Lcom/nianticproject/ingress/common/inventory/ui/n;

    .line 45
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->e:Lcom/nianticproject/ingress/common/inventory/ui/i;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/ui/j;)Lcom/nianticproject/ingress/common/inventory/ui/n;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->d:Lcom/nianticproject/ingress/common/inventory/ui/n;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/inventory/ui/j;)Lcom/nianticproject/ingress/common/inventory/ui/i;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->e:Lcom/nianticproject/ingress/common/inventory/ui/i;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/inventory/ui/j;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 50
    const-string/jumbo v0, "large"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 53
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->d:Lcom/nianticproject/ingress/common/inventory/ui/n;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/inventory/ui/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 54
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 55
    return-void
.end method

.method public a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const-string/jumbo v0, "small"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 61
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->d:Lcom/nianticproject/ingress/common/inventory/ui/n;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/n;->c()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v1

    .line 62
    invoke-static {p2, v0, v1}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/nianticproject/ingress/gameentity/components/l;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    .line 63
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/gameentity/components/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    .line 64
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 65
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->d:Lcom/nianticproject/ingress/common/inventory/ui/n;

    .line 125
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 69
    const-string/jumbo v0, "small"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 70
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->d:Lcom/nianticproject/ingress/common/inventory/ui/n;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/inventory/ui/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 73
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 76
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3f666666

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x3e75c28f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/c;->a(Ljava/lang/Float;Ljava/lang/Float;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c;

    .line 77
    return-void
.end method

.method public b(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x3df5c28f

    .line 81
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    const-string/jumbo v1, "DROP"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2, p2}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "large-font"

    const-string/jumbo v3, "white"

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    new-instance v1, Lcom/nianticproject/ingress/common/inventory/ui/k;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/inventory/ui/k;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/j;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x3e80

    invoke-static {v1}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;Lcom/a/a/e;)Lcom/a/a/c;

    .line 93
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    const-string/jumbo v1, "RECYCLE"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2, p2}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->b:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->b:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    new-instance v1, Lcom/nianticproject/ingress/common/inventory/ui/l;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/inventory/ui/l;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/j;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->b:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3ea8f5c3

    invoke-static {v1}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;Lcom/a/a/e;)Lcom/a/a/c;

    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->e:Lcom/nianticproject/ingress/common/inventory/ui/i;

    new-instance v1, Lcom/nianticproject/ingress/common/inventory/ui/m;

    const-string/jumbo v2, "RecycleEnergyGainListener"

    invoke-direct {v1, p0, v2, p3}, Lcom/nianticproject/ingress/common/inventory/ui/m;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/j;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/i;->a(Lcom/nianticproject/ingress/common/x/g;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->d:Lcom/nianticproject/ingress/common/inventory/ui/n;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->a:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/n;->b(Lcom/nianticproject/ingress/common/ui/widget/c;)V

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->b:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->d:Lcom/nianticproject/ingress/common/inventory/ui/n;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/j;->b:Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b()Lcom/nianticproject/ingress/common/ui/widget/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/inventory/ui/n;->c(Lcom/nianticproject/ingress/common/ui/widget/c;)V

    .line 115
    :cond_2
    return-void
.end method
