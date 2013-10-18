.class public final Lcom/nianticproject/ingress/common/scanner/modes/p;
.super Lcom/nianticproject/ingress/common/scanner/modes/a;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/e/a;


# instance fields
.field private final f:Lcom/nianticproject/ingress/common/scanner/modes/y;

.field private final g:Lcom/nianticproject/ingress/gameentity/f;

.field private h:Lcom/nianticproject/ingress/common/scanner/modes/af;

.field private i:Lcom/nianticproject/ingress/common/ui/elements/a;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/modes/y;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct/range {p0 .. p6}, Lcom/nianticproject/ingress/common/scanner/modes/a;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/modes/g;)V

    .line 86
    iput-object p6, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->f:Lcom/nianticproject/ingress/common/scanner/modes/y;

    .line 87
    iput-object p7, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->g:Lcom/nianticproject/ingress/gameentity/f;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/p;)Lcom/nianticproject/ingress/common/scanner/modes/af;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->h:Lcom/nianticproject/ingress/common/scanner/modes/af;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 116
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aN:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->h:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/modes/q;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/scanner/modes/q;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/p;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;J)V

    .line 120
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/p;)Lcom/nianticproject/ingress/common/scanner/modes/y;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->f:Lcom/nianticproject/ingress/common/scanner/modes/y;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/e/d;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    new-instance v0, Lcom/nianticproject/ingress/common/ui/e/d;

    invoke-direct {v0, v1, v1}, Lcom/nianticproject/ingress/common/ui/e/d;-><init>(ZZ)V

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 2
    .parameter

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->a(Lcom/nianticproject/ingress/common/j/as;)V

    .line 197
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/af;-><init>(Lcom/nianticproject/ingress/common/j/as;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->h:Lcom/nianticproject/ingress/common/scanner/modes/af;

    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->h:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 199
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->h:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "Choose Target Portal"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/r;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/modes/r;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/p;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->i:Lcom/nianticproject/ingress/common/ui/elements/a;

    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->i:Lcom/nianticproject/ingress/common/ui/elements/a;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 221
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 124
    if-nez p1, :cond_0

    move v0, v1

    .line 183
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    .line 130
    if-nez v2, :cond_1

    move v0, v1

    .line 132
    goto :goto_0

    .line 135
    :cond_1
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 136
    if-nez v0, :cond_2

    move v0, v1

    .line 138
    goto :goto_0

    .line 141
    :cond_2
    invoke-static {v2}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->g:Lcom/nianticproject/ingress/gameentity/f;

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    .line 147
    sget-object v3, Lcom/nianticproject/ingress/common/scanner/modes/t;->a:[I

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/FlipCard;->getFlipCardType()Lcom/nianticproject/ingress/gameentity/components/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/components/c;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->b:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/ej;->c()Lcom/google/a/d/u;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/ad;->a(Lcom/google/a/d/u;)D

    move-result-wide v2

    .line 167
    const-wide/high16 v4, 0x4044

    cmpl-double v0, v2, v4

## Change from less than or equal (lez) to Greater then or equal (gez)
    if-gez v0, :cond_4

    .line 168
    const-string/jumbo v0, "Out of Range"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/p;->a(Ljava/lang/String;)V

    move v0, v1

    .line 169
    goto :goto_0

    .line 150
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-eq v2, v0, :cond_3

    .line 151
    const-string/jumbo v0, "Choose Enlightened Portal"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/p;->a(Ljava/lang/String;)V

    move v0, v1

    .line 152
    goto :goto_0

    .line 157
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-eq v2, v0, :cond_3

    .line 158
    const-string/jumbo v0, "Choose Resistance Portal"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/p;->a(Ljava/lang/String;)V

    move v0, v1

    .line 159
    goto :goto_0

    .line 177
    :cond_4
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->f:Lcom/nianticproject/ingress/common/scanner/modes/y;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->g:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0, v1, p1}, Lcom/nianticproject/ingress/common/scanner/modes/y;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 183
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z
    .locals 1
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->h:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 232
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->h:Lcom/nianticproject/ingress/common/scanner/modes/af;

    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->i:Lcom/nianticproject/ingress/common/ui/elements/a;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 234
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/p;->i:Lcom/nianticproject/ingress/common/ui/elements/a;

    .line 236
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/modes/a;->b()V

    .line 237
    return-void
.end method

.method protected final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/modes/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method
