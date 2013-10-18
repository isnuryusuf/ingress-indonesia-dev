.class public Lcom/nianticproject/ingress/common/scanner/modes/l;
.super Lcom/nianticproject/ingress/common/scanner/modes/z;
.source "SourceFile"


# static fields
.field private static final g:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private h:Lcom/nianticproject/ingress/common/j/as;

.field private i:Z

.field private j:F

.field private k:Lcom/nianticproject/ingress/common/scanner/modes/m;

.field private l:Lcom/nianticproject/ingress/common/scanner/modes/af;

.field private m:Lcom/nianticproject/ingress/common/ui/widget/q;

.field private n:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/nianticproject/ingress/common/scanner/modes/n;

.field private q:Lcom/nianticproject/ingress/gameentity/f;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/modes/l;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/modes/l;->g:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/modes/g;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct/range {p0 .. p6}, Lcom/nianticproject/ingress/common/scanner/modes/z;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/modes/g;)V

    .line 72
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/n;

    const-string/jumbo v1, "FireXmpMode"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/n;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/l;Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->p:Lcom/nianticproject/ingress/common/scanner/modes/n;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->i:Z

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/l;Lcom/nianticproject/ingress/common/scanner/modes/af;)Lcom/nianticproject/ingress/common/scanner/modes/af;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->l:Lcom/nianticproject/ingress/common/scanner/modes/af;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/l;Lcom/nianticproject/ingress/common/ui/widget/q;)Lcom/nianticproject/ingress/common/ui/widget/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->m:Lcom/nianticproject/ingress/common/ui/widget/q;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/l;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->n:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/l;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->o:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/l;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->k:Lcom/nianticproject/ingress/common/scanner/modes/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->l:Lcom/nianticproject/ingress/common/scanner/modes/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->l:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->l:Lcom/nianticproject/ingress/common/scanner/modes/af;

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->k:Lcom/nianticproject/ingress/common/scanner/modes/m;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/m;->c()V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->p:Lcom/nianticproject/ingress/common/scanner/modes/n;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/n;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->p:Lcom/nianticproject/ingress/common/scanner/modes/n;

    invoke-virtual {v0, p1, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/ui/c/h;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/m;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/nianticproject/ingress/common/scanner/modes/m;->a(Lcom/nianticproject/ingress/common/scanner/modes/m;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/l;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/l;)Lcom/nianticproject/ingress/common/scanner/modes/af;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->l:Lcom/nianticproject/ingress/common/scanner/modes/af;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/l;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->q:Lcom/nianticproject/ingress/gameentity/f;

    return-object p1
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/modes/l;)Lcom/nianticproject/ingress/common/j/as;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->h:Lcom/nianticproject/ingress/common/j/as;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/modes/l;)Lcom/nianticproject/ingress/common/scanner/modes/m;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->k:Lcom/nianticproject/ingress/common/scanner/modes/m;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/modes/l;)Lcom/nianticproject/ingress/common/ui/widget/q;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->m:Lcom/nianticproject/ingress/common/ui/widget/q;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/modes/l;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->q:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/modes/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->r:Z

    return v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/scanner/modes/l;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->o:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/e/d;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/nianticproject/ingress/common/ui/e/d;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/e/d;-><init>()V

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/modes/l;->g()V

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->y()Lcom/nianticproject/ingress/common/scanner/modes/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/a;->f()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->j:F

    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->y()Lcom/nianticproject/ingress/common/scanner/modes/a;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->j:F

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->c(F)V

    .line 107
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/z;->a(Lcom/nianticproject/ingress/common/j/as;)V

    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->b:Lcom/nianticproject/ingress/common/model/k;

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->m:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v1, v2}, Lcom/google/a/c/du;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;Ljava/util/Set;)Lcom/google/a/a/aj;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/a/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->n:Ljava/util/Collection;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->o:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/m;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/modes/m;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/l;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->k:Lcom/nianticproject/ingress/common/scanner/modes/m;

    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->k:Lcom/nianticproject/ingress/common/scanner/modes/m;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 116
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->h:Lcom/nianticproject/ingress/common/j/as;

    .line 117
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->q:Lcom/nianticproject/ingress/gameentity/f;

    .line 93
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->i:Z

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->i:Z

    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->k:Lcom/nianticproject/ingress/common/scanner/modes/m;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->k:Lcom/nianticproject/ingress/common/scanner/modes/m;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/m;->d()V

    .line 151
    :cond_0
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/z;->a(F)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->j:F

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/l;->c(F)V

    .line 129
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/modes/z;->b()V

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->k:Lcom/nianticproject/ingress/common/scanner/modes/m;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->k:Lcom/nianticproject/ingress/common/scanner/modes/m;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/m;->e()V

    .line 132
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->k:Lcom/nianticproject/ingress/common/scanner/modes/m;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->l:Lcom/nianticproject/ingress/common/scanner/modes/af;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->l:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/af;->e()V

    .line 137
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/l;->l:Lcom/nianticproject/ingress/common/scanner/modes/af;

    .line 139
    :cond_1
    return-void
.end method
