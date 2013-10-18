.class final Lcom/nianticproject/ingress/common/playerprofile/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/playerprofile/bj;
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/playerprofile/ab;

.field private final b:Lcom/nianticproject/ingress/common/j/av;

.field private final c:Z

.field private d:Lcom/nianticproject/ingress/common/playerprofile/bk;

.field private e:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

.field private f:Lcom/nianticproject/ingress/common/playerprofile/al;

.field private g:Lcom/nianticproject/ingress/common/playerprofile/z;

.field private h:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private i:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

.field private m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private n:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field private final o:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/ab;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/common/j/av;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/aq;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/playerprofile/aq;-><init>(Lcom/nianticproject/ingress/common/playerprofile/ap;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->o:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    .line 69
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ab;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->a:Lcom/nianticproject/ingress/common/playerprofile/ab;

    .line 70
    iput-object p2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->e:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 71
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->b:Lcom/nianticproject/ingress/common/j/av;

    .line 72
    iput-boolean p4, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->c:Z

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/ap;)Lcom/nianticproject/ingress/common/playerprofile/bk;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->d:Lcom/nianticproject/ingress/common/playerprofile/bk;

    return-object v0
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->n:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->n:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->n:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    .line 289
    :cond_0
    if-eqz p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 291
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->n:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    .line 293
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->g:Lcom/nianticproject/ingress/common/playerprofile/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/z;->a()V

    .line 300
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 78
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 79
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 81
    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 84
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/al;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->b:Lcom/nianticproject/ingress/common/j/av;

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->c:Z

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/nianticproject/ingress/common/playerprofile/al;-><init>(Lcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/Stage;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->f:Lcom/nianticproject/ingress/common/playerprofile/al;

    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->f:Lcom/nianticproject/ingress/common/playerprofile/al;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x41c0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 91
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 92
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, 0xb6bf

    invoke-static {p1, v1}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 94
    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 100
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 101
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 102
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v3, ""

    const-string/jumbo v0, "profiles-select-badge-for-details"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 104
    const-string/jumbo v0, "default"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 107
    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4180

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x4180

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 112
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 113
    const/high16 v0, 0x41c0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v7

    .line 114
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/z;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->a:Lcom/nianticproject/ingress/common/playerprofile/ab;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->b:Lcom/nianticproject/ingress/common/j/av;

    const/4 v4, 0x0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/nianticproject/ingress/common/playerprofile/z;-><init>(Lcom/nianticproject/ingress/common/playerprofile/ab;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/j/av;Ljava/lang/Integer;Ljava/lang/Integer;FFFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->g:Lcom/nianticproject/ingress/common/playerprofile/z;

    .line 116
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 118
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 119
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->g:Lcom/nianticproject/ingress/common/playerprofile/z;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 123
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const-string/jumbo v0, "profiles"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    .line 125
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setFadeScrollBars(Z)V

    .line 127
    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    .line 132
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 137
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 138
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 139
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Z)V

    .line 140
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 144
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 145
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v4, ""

    const-string/jumbo v0, "default"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v3, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 149
    const-string/jumbo v0, "default"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 152
    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    .line 153
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 154
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v0

    const/high16 v3, 0x4100

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 158
    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->h:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 159
    iput-object v11, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->i:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 160
    iput-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 163
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 164
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/d;

    const-string/jumbo v2, "ops-close"

    invoke-direct {v1, p1, v2}, Lcom/nianticproject/ingress/common/ui/widget/d;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 165
    new-instance v2, Lcom/nianticproject/ingress/common/playerprofile/ar;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/playerprofile/ar;-><init>(Lcom/nianticproject/ingress/common/playerprofile/ap;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 171
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->j()Lcom/a/a/c;

    .line 177
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->i:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->h:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    .line 180
    invoke-virtual {p2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 181
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/playerprofile/bi;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 200
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->d()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->e()Lcom/nianticproject/ingress/common/playerprofile/bw;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->i:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 203
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->h:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 204
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 205
    sget-object v2, Lcom/nianticproject/ingress/common/playerprofile/au;->a:[I

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/bw;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 242
    :goto_0
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/bw;->b:Lcom/nianticproject/ingress/common/playerprofile/bw;

    if-eq v1, v0, :cond_1

    .line 278
    :goto_1
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->h:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->f()Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->f:Lcom/nianticproject/ingress/common/playerprofile/al;

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->g()Lcom/nianticproject/ingress/common/playerprofile/j;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4}, Lcom/nianticproject/ingress/common/playerprofile/al;->a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->g:Lcom/nianticproject/ingress/common/playerprofile/z;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->g:Lcom/nianticproject/ingress/common/playerprofile/z;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/playerprofile/z;->b()Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V

    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->i:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->j:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 218
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->h()Lcom/nianticproject/ingress/shared/rpc/q;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    sget-object v2, Lcom/nianticproject/ingress/shared/rpc/q;->b:Lcom/nianticproject/ingress/shared/rpc/q;

    if-eq v0, v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string/jumbo v2, "CLOSE"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/as;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/playerprofile/as;-><init>(Lcom/nianticproject/ingress/common/playerprofile/ap;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/ap;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "Error, please try again."

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const-string/jumbo v2, "RETRY"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    .line 232
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/at;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/playerprofile/at;-><init>(Lcom/nianticproject/ingress/common/playerprofile/ap;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/ap;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;)V

    goto :goto_0

    .line 246
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/au;->a:[I

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->j()Lcom/nianticproject/ingress/common/playerprofile/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/playerprofile/bw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 248
    :pswitch_3
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->k()Ljava/util/List;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->g:Lcom/nianticproject/ingress/common/playerprofile/z;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->e:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    invoke-virtual {v1, v0, v2, v6}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Ljava/util/List;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Z)Z

    move-result v0

    .line 251
    if-eqz v0, :cond_2

    .line 252
    iput-object v7, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->e:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/nianticproject/ingress/common/playerprofile/PlayerProfileStyles;->TEXT_WHILE_LOADING_MORE_BADGES:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->o:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto/16 :goto_1

    .line 259
    :pswitch_4
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->k()Ljava/util/List;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->g:Lcom/nianticproject/ingress/common/playerprofile/z;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->e:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    invoke-virtual {v1, v0, v2, v5}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Ljava/util/List;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Z)Z

    move-result v0

    .line 262
    if-eqz v0, :cond_3

    .line 263
    iput-object v7, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->e:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "Select a medal for details"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->o:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto/16 :goto_1

    .line 270
    :pswitch_5
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->k()Ljava/util/List;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->g:Lcom/nianticproject/ingress/common/playerprofile/z;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->e:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    invoke-virtual {v1, v0, v2, v5}, Lcom/nianticproject/ingress/common/playerprofile/z;->a(Ljava/util/List;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Z)Z

    move-result v0

    .line 273
    if-eqz v0, :cond_4

    .line 274
    iput-object v7, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->e:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v1, "Error, please try again."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->o:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto/16 :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 246
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lcom/nianticproject/ingress/common/playerprofile/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->d:Lcom/nianticproject/ingress/common/playerprofile/bk;

    .line 196
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ap;->f:Lcom/nianticproject/ingress/common/playerprofile/al;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/al;->a()V

    .line 191
    return-void
.end method
