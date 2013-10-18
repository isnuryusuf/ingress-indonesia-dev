.class public Lcom/nianticproject/ingress/ui/k;
.super Landroid/support/v4/app/t;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/t;",
        "Landroid/support/v4/app/x",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private W:Lcom/nianticproject/ingress/common/b;

.field private X:I

.field private Y:Z

.field private Z:Lcom/nianticproject/ingress/ui/r;

.field private final i:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    .line 38
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/ui/k;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/k;->i:Lcom/nianticproject/ingress/common/w/aa;

    .line 40
    sget-object v0, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/k;->W:Lcom/nianticproject/ingress/common/b;

    return-void
.end method

.method private H()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/k;->m()Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/w;->b(Landroid/support/v4/app/x;)Landroid/support/v4/a/d;

    .line 133
    return-void
.end method

.method private I()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->Z:Lcom/nianticproject/ingress/ui/r;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/k;->a(Landroid/widget/ListAdapter;)V

    .line 219
    return-void
.end method

.method public static a(IZ)Lcom/nianticproject/ingress/ui/k;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/nianticproject/ingress/ui/k;

    invoke-direct {v0}, Lcom/nianticproject/ingress/ui/k;-><init>()V

    .line 58
    iput p0, v0, Lcom/nianticproject/ingress/ui/k;->X:I

    .line 59
    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/ui/k;->c(Z)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public final A_()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->Z:Lcom/nianticproject/ingress/ui/r;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->Z:Lcom/nianticproject/ingress/ui/r;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/r;->a(Landroid/database/Cursor;)V

    .line 213
    :cond_0
    iput-object v1, p0, Lcom/nianticproject/ingress/ui/k;->Z:Lcom/nianticproject/ingress/ui/r;

    .line 214
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/k;->I()V

    .line 215
    return-void
.end method

.method public final G()V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/k;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/k;->F()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 138
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/k;->E()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/k;->E()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 142
    :cond_0
    return-void
.end method

.method public final a()Landroid/support/v4/a/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/a/d",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    const-string/jumbo v0, "CommFragment.onCreateLoader"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/nianticproject/ingress/content/e;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/k;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/k;->W:Lcom/nianticproject/ingress/common/b;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nianticproject/ingress/ui/k;->X:I

    const-string/jumbo v5, "timestamp"

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/content/e;-><init>(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;Ljava/lang/Integer;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const v0, 0x7f030005

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/b;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->W:Lcom/nianticproject/ingress/common/b;

    if-ne v0, p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/k;->W:Lcom/nianticproject/ingress/common/b;

    .line 86
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/k;->H()V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    .line 33
    move-object v2, p1

    check-cast v2, Landroid/database/Cursor;

    :try_start_0
    const-string/jumbo v0, "CommFragment.onLoadFinished"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->Z:Lcom/nianticproject/ingress/ui/r;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nianticproject/ingress/ui/r;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/k;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/nianticproject/ingress/ui/k;->X:I

    iget-boolean v5, p0, Lcom/nianticproject/ingress/ui/k;->Y:Z

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/ui/r;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZIZ)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/k;->Z:Lcom/nianticproject/ingress/ui/r;

    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/k;->I()V

    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->l()Lcom/nianticproject/ingress/common/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/AndroidComm;

    if-eqz v0, :cond_0

    check-cast v2, Lcom/nianticproject/ingress/content/f;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/AndroidComm;->a(Lcom/nianticproject/ingress/content/f;)V

    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/k;->E()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/k;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->Z:Lcom/nianticproject/ingress/ui/r;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/ui/r;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->Z:Lcom/nianticproject/ingress/ui/r;

    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/k;->Y:Z

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/r;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->c(Landroid/os/Bundle;)V

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string/jumbo v0, "categories"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/k;->X:I

    .line 114
    const-string/jumbo v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/k;->Y:Z

    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->i:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "categories"

    aput-object v1, v0, v3

    iget v1, p0, Lcom/nianticproject/ingress/ui/k;->X:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "active"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/nianticproject/ingress/ui/k;->Y:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/k;->m()Landroid/support/v4/app/w;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/k;->i:Lcom/nianticproject/ingress/common/w/aa;

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/nianticproject/ingress/ui/k;->X:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    .line 122
    invoke-virtual {v0, p0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/x;)Landroid/support/v4/a/d;

    .line 123
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->i:Lcom/nianticproject/ingress/common/w/aa;

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/nianticproject/ingress/ui/k;->Y:Z

    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->Z:Lcom/nianticproject/ingress/ui/r;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/k;->Z:Lcom/nianticproject/ingress/ui/r;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/ui/r;->a(Z)V

    .line 72
    :cond_0
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/t;->d(Landroid/os/Bundle;)V

    .line 97
    const-string/jumbo v0, "categories"

    iget v1, p0, Lcom/nianticproject/ingress/ui/k;->X:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v0, "active"

    iget-boolean v1, p0, Lcom/nianticproject/ingress/ui/k;->Y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method public final q()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v4/app/t;->q()V

    .line 128
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/k;->H()V

    .line 129
    return-void
.end method
