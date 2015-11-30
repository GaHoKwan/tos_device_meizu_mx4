.class public final Landroid/preference/PreferenceScreen;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mGroupMode:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue add mGroupMode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue add attribute for group mode.add by cjy"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 116
    const v1, 0x101008b

    invoke-direct {p0, p1, p2, v1}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mGroupMode:Z

    .line 120
    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceScreen:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Landroid/preference/PreferenceScreen;->mGroupMode:Z

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/PreferenceScreen;->mGroupMode:Z

    .line 124
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 219
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 220
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    .line 221
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    :cond_0
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 226
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900d1

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "childPrefScreen":Landroid/view/View;
    const v5, 0x102000a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 229
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 232
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 233
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v5

    invoke-direct {v2, v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 234
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 239
    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 240
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 241
    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 246
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 248
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 249
    return-void

    .line 237
    :cond_2
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue reset pading and divider for group mode. add by cjy"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 185
    iget-boolean v2, p0, Landroid/preference/PreferenceScreen;->mGroupMode:Z

    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105018e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 189
    .local v0, "footerMinHeight":I
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105018a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 191
    .local v1, "headerMinHeight":I
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->applyMeizuPartitionStyle()V

    .line 198
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDividerInSide(Z)V

    .line 203
    .end local v0    # "footerMinHeight":I
    .end local v1    # "headerMinHeight":I
    :cond_1
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 207
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 2
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Featrue add for group mode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 163
    iget-boolean v0, p0, Landroid/preference/PreferenceScreen;->mGroupMode:Z

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;Landroid/content/Context;)V

    .line 167
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 253
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 254
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 267
    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 268
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 271
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Landroid/preference/Preference;

    if-nez v2, :cond_1

    .line 279
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 273
    check-cast v1, Landroid/preference/Preference;

    .line 276
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setPreferenceView(Landroid/view/View;)V

    .line 278
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 302
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/PreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 304
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 313
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 308
    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    .line 309
    .local v0, "myState":Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 310
    iget-boolean v1, v0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, v0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 288
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 289
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 290
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 297
    :goto_0
    return-object v1

    .line 294
    :cond_1
    new-instance v1, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 295
    .local v1, "myState":Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 296
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setGroupMode(Z)V
    .locals 1
    .param p1, "group"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "xiaohongzhi@SDK.Feature set group mode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 359
    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mGroupMode:Z

    .line 360
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 364
    :cond_0
    return-void
.end method
