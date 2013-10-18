.class public final Lcom/nianticproject/ingress/m/a;
.super Lcom/nianticproject/ingress/common/v/e;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aa;


# instance fields
.field private final e:Lcom/nianticproject/ingress/NemesisActivity;

.field private final f:I

.field private g:Lcom/nianticproject/ingress/common/scanner/k;

.field private h:Lcom/nianticproject/ingress/common/ui/elements/ay;

.field private i:Z

.field private j:Lcom/nianticproject/ingress/cq;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/NemesisActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/v/e;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    .line 57
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/nianticproject/ingress/m/a;->f:I

    .line 58
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->d:Lcom/nianticproject/ingress/common/v/ai;

    iget-boolean v1, p0, Lcom/nianticproject/ingress/m/a;->i:Z

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/v/ai;->a(Z)V

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/m/a;)Lcom/nianticproject/ingress/NemesisActivity;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/m/a;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/nianticproject/ingress/m/a;->a(Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/shared/ai;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/m/a;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/m/a;->a(Lcom/nianticproject/ingress/shared/ai;)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/shared/ai;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->d:Lcom/nianticproject/ingress/common/v/ai;

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/nianticproject/ingress/m/a;->d:Lcom/nianticproject/ingress/common/v/ai;

    iget-object v2, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_1

    const v0, 0x7f09001a

    :goto_0
    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/NemesisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/v/ai;->b(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void

    .line 117
    :cond_1
    const v0, 0x7f09001b

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 180
    if-eqz p1, :cond_2

    .line 181
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/ay;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/elements/ay;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/m/a;->h:Lcom/nianticproject/ingress/common/ui/elements/ay;

    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->g:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/m/a;->h:Lcom/nianticproject/ingress/common/ui/elements/ay;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->d:Lcom/nianticproject/ingress/common/v/ai;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nianticproject/ingress/m/a;->B()V

    .line 188
    :cond_1
    return-void

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->h:Lcom/nianticproject/ingress/common/ui/elements/ay;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->g:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/m/a;->h:Lcom/nianticproject/ingress/common/ui/elements/ay;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/m/a;->h:Lcom/nianticproject/ingress/common/ui/elements/ay;

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/m/a;)Lcom/nianticproject/ingress/common/u/q;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->c:Lcom/nianticproject/ingress/common/u/q;

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/nianticproject/ingress/m/a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nianticproject/ingress/m/a;->i:Z

    .line 176
    iget-boolean v0, p0, Lcom/nianticproject/ingress/m/a;->i:Z

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/m/a;->a(Z)V

    .line 177
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    invoke-static {p1}, Lcom/nianticproject/ingress/push/d;->a(Landroid/net/Uri;)V

    .line 224
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->d:Lcom/nianticproject/ingress/common/v/ai;

    invoke-static {}, Lcom/nianticproject/ingress/push/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/v/ai;->e(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/cq;Lcom/nianticproject/ingress/common/playerprofile/ax;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-super/range {v1 .. v8}, Lcom/nianticproject/ingress/common/v/e;->a(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/u/q;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/playerprofile/ax;)V

    .line 66
    iput-object p3, p0, Lcom/nianticproject/ingress/m/a;->a:Lcom/nianticproject/ingress/common/model/k;

    .line 67
    iput-object p4, p0, Lcom/nianticproject/ingress/m/a;->b:Lcom/nianticproject/ingress/common/r;

    .line 68
    iput-object p5, p0, Lcom/nianticproject/ingress/m/a;->g:Lcom/nianticproject/ingress/common/scanner/k;

    .line 69
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/nianticproject/ingress/m/a;->j:Lcom/nianticproject/ingress/cq;

    .line 72
    new-instance v1, Lcom/nianticproject/ingress/m/b;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/m/b;-><init>(Lcom/nianticproject/ingress/m/a;)V

    invoke-interface {p3, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 82
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/v/ai;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/v/e;->a(Lcom/nianticproject/ingress/common/v/ai;)V

    .line 104
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->a(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/m/a;->a(Lcom/nianticproject/ingress/shared/ai;)V

    .line 108
    invoke-direct {p0}, Lcom/nianticproject/ingress/m/a;->B()V

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->c(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->d(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/nianticproject/ingress/push/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/v/ai;->e(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/nianticproject/ingress/m/a;->i:Z

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->a(Z)V

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/m/a;->a(Z)V

    .line 89
    return-void
.end method

.method public final f_()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/m/a;->i:Z

    .line 94
    iget-boolean v0, p0, Lcom/nianticproject/ingress/m/a;->i:Z

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/m/a;->a(Z)V

    .line 95
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/nianticproject/ingress/common/v/e;->r()V

    .line 232
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->p()Lcom/nianticproject/ingress/common/ui/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->j:Lcom/nianticproject/ingress/cq;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/cq;->c()V

    .line 234
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/CommService;->b(Landroid/content/Context;)V

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->j:Lcom/nianticproject/ingress/cq;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/cq;->f_()V

    .line 237
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/CommService;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final t()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    const-class v2, Lcom/nianticproject/ingress/SoundBoardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    iget-object v1, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/NemesisActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method public final u()V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    const-class v3, Lcom/nianticproject/ingress/AttributionPageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public final v()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "http://support.google.com/ingress"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->startActivity(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method public final w()V
    .locals 3

    .prologue
    .line 125
    const-string/jumbo v0, "Device"

    const-string/jumbo v1, "signOut"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 129
    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 130
    const v1, 0x1040013

    new-instance v2, Lcom/nianticproject/ingress/m/c;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/m/c;-><init>(Lcom/nianticproject/ingress/m/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    iget-object v1, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    new-instance v2, Lcom/nianticproject/ingress/m/d;

    invoke-direct {v2, p0, v0}, Lcom/nianticproject/ingress/m/d;-><init>(Lcom/nianticproject/ingress/m/a;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/NemesisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public final x()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisActivity;->a()V

    .line 218
    invoke-static {}, Lcom/nianticproject/ingress/push/d;->d()Landroid/content/Intent;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    iget v2, p0, Lcom/nianticproject/ingress/m/a;->f:I

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/NemesisActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    return-void
.end method

.method public final y()V
    .locals 7

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->a:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    .line 149
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    iget-object v2, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    const v3, 0x7f09005a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/ai;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/NemesisActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 153
    const v2, 0x1040013

    new-instance v3, Lcom/nianticproject/ingress/m/e;

    invoke-direct {v3, p0, v0}, Lcom/nianticproject/ingress/m/e;-><init>(Lcom/nianticproject/ingress/m/a;Lcom/nianticproject/ingress/shared/ai;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    const v0, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    iget-object v0, p0, Lcom/nianticproject/ingress/m/a;->e:Lcom/nianticproject/ingress/NemesisActivity;

    new-instance v2, Lcom/nianticproject/ingress/m/f;

    invoke-direct {v2, p0, v1}, Lcom/nianticproject/ingress/m/f;-><init>(Lcom/nianticproject/ingress/m/a;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/NemesisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 166
    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    goto :goto_0
.end method

.method public final z()V
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 209
    :goto_0
    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->c(Z)V

    .line 210
    iget-object v1, p0, Lcom/nianticproject/ingress/m/a;->j:Lcom/nianticproject/ingress/cq;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/cq;->a(Z)V

    .line 211
    iget-object v1, p0, Lcom/nianticproject/ingress/m/a;->d:Lcom/nianticproject/ingress/common/v/ai;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/v/ai;->d(Z)V

    .line 212
    const-string/jumbo v1, "ParticleFilter"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ParticleFilterOn"

    :goto_1
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :cond_1
    const-string/jumbo v0, "ParticleFilterOff"

    goto :goto_1
.end method
