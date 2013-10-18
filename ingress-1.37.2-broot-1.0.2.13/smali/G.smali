.class public final LG;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x4100

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG;->a:Ljava/util/List;

    iput-object p1, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string v0, "small-white"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iput-object v0, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const-string v0, "nav-button-clear"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, LG;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const-string v1, "nav-button"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v4, v3}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    invoke-virtual {p0, v0}, LG;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, -0x3f00

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v0}, LG;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    iget-object v0, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {p0}, LG;->row()Lcom/a/a/c;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, LG;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p4, p5}, LG;->a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
    .locals 4

    const/high16 v3, 0x4100

    iget-object v0, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, v0}, LG;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    :cond_0
    iget-object v0, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    if-nez p1, :cond_2

    iget-object v0, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    :goto_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v1, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_1
    iget-object v1, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x3f00

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    iget-object v1, p0, LG;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    iget-object v0, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, LG;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    goto :goto_0
.end method
