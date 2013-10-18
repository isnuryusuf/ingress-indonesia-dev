.class final Lcom/nianticproject/ingress/common/ui/g/q;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/g/m;

.field private final b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private c:Z

.field private final d:F

.field private final e:F

.field private f:Z

.field private final g:Lcom/badlogic/gdx/scenes/scene2d/InputListener;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/g/m;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 130
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/g/q;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    .line 131
    const-string/jumbo v0, "portal-key-chooser-handle"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 104
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/g/q;->c:Z

    .line 108
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/g/q;->f:Z

    .line 110
    new-instance v0, Lcom/nianticproject/ingress/common/ui/g/r;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/g/r;-><init>(Lcom/nianticproject/ingress/common/ui/g/q;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->g:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    .line 132
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/g/q;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 133
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 134
    const-string/jumbo v1, "portal-key-vert"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/g/q;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 137
    invoke-virtual {p4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->d:F

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->e:F

    .line 140
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->g:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/g/q;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/g/q;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/g/q;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/g/q;->f:Z

    return p1
.end method

.method private b()V
    .locals 5

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/q;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v1

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/g/q;->e:F

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/g/q;->d:F

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/g/q;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 167
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/g/q;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/g/q;->b()V

    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/g/q;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->c:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->a:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/m;->b()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->c:Z

    return v0
.end method

.method public final act(F)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x44fa

    .line 145
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->f:Z

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 149
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->d:F

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/g/q;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 150
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/q;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->c:Z

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/q;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 157
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/g/q;->b()V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v0

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/g/q;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->c:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/g/q;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/g/q;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v1

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    goto :goto_1
.end method
