.class public final Lcom/nianticproject/ingress/ui/a;
.super Landroid/support/v4/app/d;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private W:I

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/ui/a;->W:I

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a;->X:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a;->Y:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a;->Z:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a;->aa:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a;->ab:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ui/a;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/nianticproject/ingress/ui/a;->W:I

    return v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/ui/a;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    new-instance v0, Lcom/nianticproject/ingress/ui/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/ui/a;-><init>()V

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 114
    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v2, "positive"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v2, "negative"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/a;->e(Landroid/os/Bundle;)V

    .line 120
    return-object v0
.end method

.method public static a(I[Ljava/lang/Object;)Lcom/nianticproject/ingress/ui/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/ui/a;->a(I[Ljava/lang/Object;Landroid/os/Bundle;)Lcom/nianticproject/ingress/ui/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(I[Ljava/lang/Object;Landroid/os/Bundle;)Lcom/nianticproject/ingress/ui/a;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 124
    invoke-static {p0, v0, v0, v0, v0}, Lcom/nianticproject/ingress/ui/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/ui/a;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Lcom/nianticproject/ingress/ui/a;->h()Landroid/os/Bundle;

    move-result-object v5

    .line 126
    const-string/jumbo v6, "items"

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "extras"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    return-object v4

    .line 126
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    array-length v7, p1

    move v2, v1

    :goto_0
    if-ge v1, v7, :cond_0

    aget-object v8, p1, v1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/a;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "coda.ttf"

    invoke-static {v1, v0, v2}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 217
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/app/d;->a(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/a;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/ui/a;->W:I

    .line 169
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/a;->X:Ljava/lang/String;

    .line 170
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/a;->Y:Ljava/lang/String;

    .line 171
    const-string/jumbo v1, "positive"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/a;->Z:Ljava/lang/String;

    .line 172
    const-string/jumbo v1, "negative"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/ui/a;->aa:Ljava/lang/String;

    .line 173
    const-string/jumbo v1, "items"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a;->ab:[Ljava/lang/String;

    .line 174
    return-void
.end method

.method public final a(Landroid/support/v4/app/j;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/s;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()I

    .line 156
    return-void
.end method

.method public final b()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/a;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->ab:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Lcom/nianticproject/ingress/ui/e;

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/a;->ab:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/ui/e;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->X:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->Y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->Z:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->Z:Ljava/lang/String;

    new-instance v2, Lcom/nianticproject/ingress/ui/b;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/ui/b;-><init>(Lcom/nianticproject/ingress/ui/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->aa:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->aa:Ljava/lang/String;

    new-instance v2, Lcom/nianticproject/ingress/ui/c;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/ui/c;-><init>(Lcom/nianticproject/ingress/ui/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_5

    .line 207
    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 209
    :cond_5
    return-object v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/a;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 233
    instance-of v1, v0, Lcom/nianticproject/ingress/ui/d;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->ab:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a;->ab:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 237
    :goto_0
    check-cast v0, Lcom/nianticproject/ingress/ui/d;

    iget v2, p0, Lcom/nianticproject/ingress/ui/a;->W:I

    invoke-interface {v0, v2, p2, v1}, Lcom/nianticproject/ingress/ui/d;->a(IILjava/lang/String;)V

    .line 239
    :cond_0
    return-void

    .line 234
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/support/v4/app/d;->onDismiss(Landroid/content/DialogInterface;)V

    .line 224
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/a;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 225
    instance-of v1, v0, Lcom/nianticproject/ingress/ui/d;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/nianticproject/ingress/ui/d;

    iget v1, p0, Lcom/nianticproject/ingress/ui/a;->W:I

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/ui/d;->c(I)V

    .line 228
    :cond_0
    return-void
.end method
