.class public abstract Lcom/nianticproject/ingress/common/ui/h;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/widget/af;

.field private final b:Lcom/nianticproject/ingress/common/ac;

.field private final c:Lcom/nianticproject/ingress/common/ui/i;

.field private final d:Lcom/nianticproject/ingress/common/ui/widget/ag;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:F

.field private final h:F

.field private i:Lcom/nianticproject/ingress/common/ui/widget/aa;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/ui/widget/af;Lcom/nianticproject/ingress/common/ui/widget/ag;Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 119
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/h;->b:Lcom/nianticproject/ingress/common/ac;

    .line 120
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/h;->a:Lcom/nianticproject/ingress/common/ui/widget/af;

    .line 121
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/h;->d:Lcom/nianticproject/ingress/common/ui/widget/ag;

    .line 122
    iput-object p5, p0, Lcom/nianticproject/ingress/common/ui/h;->e:Ljava/lang/String;

    .line 123
    iput-object p6, p0, Lcom/nianticproject/ingress/common/ui/h;->f:Ljava/lang/String;

    .line 124
    iput p7, p0, Lcom/nianticproject/ingress/common/ui/h;->g:F

    .line 125
    iput p8, p0, Lcom/nianticproject/ingress/common/ui/h;->h:F

    .line 127
    new-instance v0, Lcom/nianticproject/ingress/common/ui/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/ui/i;-><init>(Lcom/nianticproject/ingress/common/ui/h;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/h;->c:Lcom/nianticproject/ingress/common/ui/i;

    .line 128
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/h;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/h;->c:Lcom/nianticproject/ingress/common/ui/i;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/h;Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/aa;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/h;->i:Lcom/nianticproject/ingress/common/ui/widget/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/h;)Lcom/nianticproject/ingress/common/ui/widget/af;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/h;->a:Lcom/nianticproject/ingress/common/ui/widget/af;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/h;)Lcom/nianticproject/ingress/common/ui/widget/ag;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/h;->d:Lcom/nianticproject/ingress/common/ui/widget/ag;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/h;)Lcom/nianticproject/ingress/common/ui/widget/aa;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/h;->i:Lcom/nianticproject/ingress/common/ui/widget/aa;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/ui/h;)F
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/h;->h:F

    return v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/ui/h;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/ui/h;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/ui/h;)Lcom/nianticproject/ingress/common/ac;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/h;->b:Lcom/nianticproject/ingress/common/ac;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/ui/h;)F
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/h;->g:F

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/h;->i:Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/aa;->a()V

    .line 148
    return-void
.end method

.method protected a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method protected abstract a(Lcom/nianticproject/ingress/common/ac;)V
.end method
